define [
  'angularAMD'
], (angularAMD) ->

  angularAMD.directive 'home', ['$timeout', ($timeout) ->
    dv = {

      controller: [
        '$scope',
        ($scope) -> vm = @
          controler.log $scope
      ],

      restrict: 'A'
      scope:
        template: '='
        inbound: '='
        outbound '='
        idempotent: '='
        nonidempotent: '='
      controllerAs: 'vm'
      link: ($scope, $element, $attr) ->
        controler.log $scope
    }

    dv
  ]
