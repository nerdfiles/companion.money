###
# fileOverview

     _
    | |                 _          _
    | |__   ___   ___ _| |_  ___ _| |_  ____ _____ ____
    |  _ \ / _ \ / _ (_   _)/___|_   _)/ ___|____ |  _ \
    | |_) ) |_| | |_| || |_|___ | | |_| |   / ___ | |_| |
    |____/ \___/ \___/  \__|___/   \__)_|   \_____|  __/
                                                  |_|

## description

###

require [
  'angularAMD'
  'angular'
], (angularAMD, angular) ->

  doc = document

  initialize = () ->
    require ['interface']

  doc.addEventListener 'deviceready', initialize, false

  if typeof cordova == 'undefined'
    angular.element().ready ->
      try
        initialize()
      catch e
        console.error e.stack or e.message or e
      return
  return

