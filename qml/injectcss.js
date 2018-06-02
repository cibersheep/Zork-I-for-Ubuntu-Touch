function handler(event) {
    console.log('Injecting ubuntu touch styling fixes');

    var style = document.createElement('style');
    style.type = 'text/css';
    style.appendChild(document.createTextNode(
        'body { background-color: #f6f6f5; color: #111} ' +
        '.noct { background-color: #333333 !important; color: #f6f6f5 } ' +
        '.noct .zvm-bg-2 { background-color:#f6f6f5 } '  +
        '.noct .zvm-fg-9 { color:#333 } '
    ));

    document.head.appendChild(style);
}

window.addEventListener('load', handler, false);
document.body.setAttribute("id", "body");
