#!/bin/bash
# modified by jmeyoung@gmail.com - http://jamsyoung.com
# original from https://github.com/erikfried - https://gist.github.com/858343

jslint="${TM_SUPPORT_PATH}/script/JSLint/jslint.js"
wrapper="${TM_SUPPORT_PATH}/script/jsc-jslint-wrapper.js"
data="${1}"

# data could be a filename or a selection
if [ -e "${data}" ]; then
    echo "<p>File: ${data}</p>"
    /System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc "${jslint}" "${wrapper}" -- "`cat ${data}`"
else
    /System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc "${jslint}" "${wrapper}" -- "`echo "${data}"`"
fi