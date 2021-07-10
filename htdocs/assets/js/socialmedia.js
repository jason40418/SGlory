/**
 * 常數區域
 */
var facebook_appID = "105239183677067";

/**
 * Facebook 分享按鈕
 */

window.fbAsyncInit = function() {
        FB.init({
            appId      : facebook_appID,
            xfbml      : true,
            version    : 'v2.4'
    });
};

(function(d, s, id){
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) {return;}
js = d.createElement(s); js.id = id;
js.src = "//connect.facebook.net/zh_TW/sdk.js";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

function facebookShare (ID, url, title, info) {
    $(ID).on('click', function() {
        FB.ui({
            method: 'share_open_graph',
            action_type: 'og.shares',
            action_properties: JSON.stringify({
                object : {
                'og:url': url,
                'og:title': title,
                'og:description': info.description,
                'og:image':  info.images
                }
            })
        });
    });
}

/**
 * Twitter 分享按鈕
 */
