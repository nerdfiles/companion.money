// Generated by CoffeeScript 1.11.1
(function() {
  define(['angularAMD'], function(angularAMD) {
    return angularAMD.directive('home', [
      '$timeout', function($timeout) {
        var dv;
        dv = {
          controller: [
            '$scope', function($scope) {
              var vm;
              vm = this;
              console.log($scope);
            }
          ],
          restrict: 'A',
          scope: {
            template: '=',
            inbound: '=',
            outbound: '=',
            idempotent: '=',
            nonidempotent: '='
          },
          controllerAs: 'vm',
          link: function($scope, $element, $attr) {
            return controler.log($scope);
          }
        };
        return dv;
      }
    ]);
  });

}).call(this);
