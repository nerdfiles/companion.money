// Generated by CoffeeScript 1.11.1
(function() {
  define(['interface'], function(__interface__) {
    var HomeController;
    HomeController = function($scope, $timeout) {
      var vm;
      vm = this;
      vm.loaded = false;
      $timeout(function() {
        vm.loaded = true;
      }, 4);
    };
    return ['$scope', '$timeout', HomeController];
  });

}).call(this);
