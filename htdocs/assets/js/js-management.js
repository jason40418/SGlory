// Include script file
function addScript(filename) {
    var head = document.getElementsByTagName('head')[0];

    var script = document.createElement('script');
    script.src = filename;
    script.type = 'text/javascript';

    head.append(script);
}

var jsFolder = "//sglory.cf/assets/js/";

addScript(jsFolder + "sglory.js");
addScript(jsFolder + "jquery-confirm.js");
addScript(jsFolder + "jquery-ui.js");
addScript(jsFolder + "dropify.min.js");
addScript(jsFolder + "trumbowyg.min.js");
addScript(jsFolder + "particles.js");
addScript(jsFolder + "jquery.basictable.min.js");
addScript(jsFolder + "socialmedia.js");
addScript("//cdn.jsdelivr.net/npm/goodshare.js@4/goodshare.min.js");