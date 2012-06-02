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
        browser: true
        white: true
    };

    JSLINT(source, defaultOptions);

    print('<div>' + JSLINT.error_report(JSLINT.data()) + '</div>');

    quit();
}(arguments[0]));