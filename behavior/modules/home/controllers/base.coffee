define [
  'interface'
], (__interface__) ->

  HomeController = ($scope, $timeout) ->

    vm = this

    vm.loaded = false

    $timeout(() ->
      vm.loaded = true
      return
    , 4)

    return

  [
    '$scope'
    '$timeout'
    HomeController
  ]
