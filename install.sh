#!/bin/bash

echo "This is a very destructive script right now.  Don't use it yet"
exit

mkdir -p "~/Library/Application Support/TextMate"

cd "~/Library/Application Support/TextMate"

svn co http://svn.textmate.org/trunk/Support

cd Support

mv version version.original

echo "100000000" > version


mkdir -p "~/Library/Application Support/TextMate/Support/script/JSLint"

git clone https://github.com/douglascrockford/JSLint.git "~/Library/Application Support/TextMate/Support/script/JSLint/"

mkdir -p "~/Library/Application Support/TextMate/Bundles"

cd

git clone git://github.com/jamsyoung/TextMate-JavaScript-JSLint.git

mv "~/TextMate-JavaScript-JSLint/Bundles/JavaScript JSLint.tmbundle" "~/Library/Application Support/TextMate/Bundles/"

mv ~/TextMate-JavaScript-JSLint/Support/bin/* "~/Library/Application Support/TextMate/Support/bin/"

mv ~/TextMate-JavaScript-JSLint/Support/script/* "~/Library/Application Support/TextMate/Support/script/"

rm -rf ~/TextMate-JavaScript-JSLint"
