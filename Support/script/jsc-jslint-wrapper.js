/* modified by jmeyoung@gmail.com - http://jamsyoung.com */
/* original from https://github.com/erikfried - https://gist.github.com/858343 */

/*global JSLINT, print, quit, arguments */
(function (source) {
    if (typeof JSLINT === 'undefined') {
        print('Error: JSLINT does not appear to be properly loaded.');
    }

    if (typeof JSLINT === 'undefined' || !source) {
        print('usage\n $ jsc jslint.js jsc_jslint.js -- "`cat source.js`"');
        quit();
    }

    var defaultOptions = {
        browser: true,
        white: true,
        onevar: true,
        undef: true,
        newcap: true,
        nomen: true,
        regexp: true,
        plusplus: true,
        bitwise: true,
        maxerr: 50,
        indent: 4
    };

    JSLINT(source, defaultOptions);

    print('<style>');
    print('#errors p { margin: 0 0 10px 40px; }');
    print('#errors p.evidence { font-family: monospace; padding: 4px; border: 1px dashed #aaa; margin: 0 0 20px 0; }');
    print('.function { font-family: monospace; }');
    print('</style>');

    print('<div>' + JSLINT.report() + '</div>');

    quit();
}(arguments[0]));