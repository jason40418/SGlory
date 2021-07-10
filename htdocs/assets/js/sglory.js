$(window).on('scroll', function () {
    if ($(window).scrollTop() > $(window).height())
        $('#backTop').css('opacity', 1);
    else
        $('#backTop').css('opacity', 0);
});

$("#backTop").click(function () {
    toTop();
});

function toTop() {
    $("html, body").animate({ scrollTop: 0 }, "slow");
}

function getJSON(url, callback) {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);
    xhr.responseType = 'json';
    xhr.onload = function () {
        var status = xhr.status;
        if (status === 200) {
            callback(null, xhr.response);
        } else {
            callback(status, xhr.response);
        }
    };
    xhr.send();
}

function menu() {
    getJSON('//sglory.cf/assets/json/menu.json', function (err, data) {
        if (err != null) {
            console.error(err);
        }
        else {
            var array = data.content;
            var content = "";
            array.forEach(element => {
                content = content + "<li><a href='" + element.url + "'>" + element.name + "</a></li>";
            });
            var menu_content = document.getElementById("menu_content");
            menu_content.outerHTML = content;
        }
    });
}

function copyright() {
    getJSON('//sglory.cf/assets/json/copyright.json', function (err, data) {
        if (err != null) {
            console.error(err);
        }
        else {
            var array = data.content;
            var content = "";
            var count = 1;
            array.forEach(element => {
                if (element.header == "true") {
                    if (element.link == "true")
                        content = content + element.ID + ":" + "<a href='" + element.link_src + "'>" + element.name + "</a>";
                    else
                        content = content + element.ID + ":" + element.name;
                }
                else {
                    if (element.link == "true")
                        content = content + "<a href='" + element.link_src + "'>" + element.name + "</a>";
                    else
                        content = content + element.name;
                }
                content += "<br/>"
            });
            var copyright_content = document.getElementById("copyright_content");
            copyright_content.outerHTML = content;
        }
    });
}

function tawk_chat() {
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
    (function () {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = 'https://embed.tawk.to/5a6af5464b401e45400c69d7/default';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
}

$(document).ready(function () {
    menu();
    copyright();
    tawk_chat();
});