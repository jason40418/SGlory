// Include CSS file
function addCSS(filename) {
    var head = document.getElementsByTagName('head')[0];

    var style = document.createElement('link');
    style.href = filename;
    style.type = 'text/css';
    style.rel = 'stylesheet';
    head.append(style);
}

var cssFolder = "//sglory.cf/assets/css/";

addCSS(cssFolder + "sglory.css");
addCSS(cssFolder + "jquery-confirm.css");
addCSS(cssFolder + "jquery-ui.css");
addCSS(cssFolder + "flexboxgrid.min.css");
addCSS(cssFolder + "loading.css");
addCSS(cssFolder + "starcraft2-font.css");
addCSS(cssFolder + "hover-min.css");
addCSS(cssFolder + "dropify.min.css");
addCSS(cssFolder + "trumbowyg.min.css");
addCSS(cssFolder + "basictable.css");