rails-jquery-dateinput
======================

Replaces date selects, created by the rails date form helper, with a [[jQuery tools dateinput](http://flowplayer.org/tools/dateinput/index.html "jQuery tools dateinput")]

Based on [[https://gist.github.com/706187](https://gist.github.com/706187)]

Usage
-----

Require the javascript in `app/assets/javascripts/applications.js`

    //= require rails-jquery-dateinput

this will also load version 1.2.6 of jQuery tools dateinput. If you would like to use another version, load the javascript like this

    //= require rails-jquery-dateinput/without-jquery-tools

don't forget to load your version before.

For the standard CSS require in `app/assets/stylesheets/application.css`

  *= require jquery-tools-1.2.6/index