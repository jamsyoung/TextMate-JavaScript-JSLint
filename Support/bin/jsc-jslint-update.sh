#!/bin/bash
# jmeyoung@gmail.com - http://jamsyoung.com

echo "<pre>"
git clone https://github.com/douglascrockford/JSLint.git "${TM_SUPPORT_PATH}/script/JSLint/temp"

echo
rsync -uvb --suffix=.prev "${TM_SUPPORT_PATH}"/script/JSLint/temp/jslint.js "${TM_SUPPORT_PATH}/script/JSLint/"

echo
rm -rf "${TM_SUPPORT_PATH}/script/JSLint/temp"

diff -s "${TM_SUPPORT_PATH}/script/JSLint/jslint.js.prev" "${TM_SUPPORT_PATH}/script/JSLint/jslint.js"
echo "</pre>"