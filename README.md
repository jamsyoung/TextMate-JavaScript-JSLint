# TextMate JavaScript JSLint Bundle

## Summary
Allows jslinting of documents or selections within TextMate utilizing the
JavaScript Console included with Mac OS X (jsc).  I realize this has
been done before, but none seemed to do it exactly the way I wanted.


## To Do
Create a script for the initial setup and getting the JSLint files in the
proper place.


## Requirements
Support files are needed and this is not part of the official TextMate svn, so
you will need to pull down a local Support directory and install the needed
files there.  This, of course, requires svn to be installed.


### Initial Install
1. Get a customizeable Support directory in your home.

    $ mkdir -p ~/Library/Application\ Support/TextMate
    $ cd ~/Library/Application\ Support/TextMate


2. Pull down the Support directory from svn

    $ svn co http://svn.textmate.org/trunk/Support


3. Update the version to insure TextMate reads from the new copy.  Edit
   ~/Library/Application\ Support/TextMate/Support/version and add a 0 to the
   number.


4. Get the most current version of JSLint and put it in the Support script
   directory.

    $ mkdir ~/Library/Application\ Support/TextMate/Support/script/JSLint
    $ git clone https://github.com/douglascrockford/JSLint.git ~/Library/Application\ Support/TextMate/Support/script/JSLint/


5. Install this bundle with support files

    $ mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    $ cd ~
    $ git clone git://github.com/jamsyoung/TextMate-JavaScript-JSLint.git
    $ mv ~/TextMate-JavaScript-JSLint/Bundles/JavaScript\ JSLint.tmbundle ~/Library/Application\ Support/TextMate/Bundles/
    $ mv ~/TextMate-JavaScript-JSLint/Support/bin/* ~/Library/Application\ Support/TextMate/Support/bin/
    $ mv ~/TextMate-JavaScript-JSLint/Support/script/* ~/Library/Application\ Support/TextMate/Support/script/


6. Fire up TextMate and make sure you have a JavaScript JSLint Bundle.  CMD-Shift-L should trigger it.


7. Update jslint.js.  In TextMate hit CMD-Shift-L 2.  This will update the jslint.js in the Support folder.


jmeyoung@gmail.com
http://jamsyoung.com
