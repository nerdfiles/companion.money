// Generated by CoffeeScript 1.11.1

/*
 * fileOverview

     _
    | |                 _          _
    | |__   ___   ___ _| |_  ___ _| |_  ____ _____ ____
    |  _ \ / _ \ / _ (_   _)/___|_   _)/ ___|____ |  _ \
    | |_) ) |_| | |_| || |_|___ | | |_| |   / ___ | |_| |
    |____/ \___/ \___/  \__|___/   \__)_|   \_____|  __/
                                                  |_|

## description
 */

(function() {
  require(['angularAMD', 'angular'], function(angularAMD, angular) {
    var doc, initialize;
    doc = document;
    initialize = function() {
      return require(['interface']);
    };
    doc.addEventListener('deviceready', initialize, false);
    if (typeof cordova === 'undefined') {
      angular.element().ready(function() {
        var e;
        try {
          initialize();
        } catch (error) {
          e = error;
          console.error(e.stack || e.message || e);
        }
      });
    }
  });

}).call(this);
