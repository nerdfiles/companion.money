define [
  'interface'
], (__interface__) ->

  HomeController = ($scope, $timeout) ->

    vm = this

    vm.loaded = false

    $timeout(() ->
      vm.loaded = true
      return
    , 200)

    return

  [
    '$scope'
    '$timeout'
    HomeController
  ]
