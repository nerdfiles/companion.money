define [
  'angularAMD'
], (angularAMD) ->
  routes = ($routeProvider, $httpProvider, $locationProvider) ->

    $locationProvider.html5Mode true

    $routeProvider
      .when("/", angularAMD.route({
        templateUrl   : './views/home.html'
        controllerUrl : 'HomeController'
        controllerAs  : 'vm'
      }))
      .otherwise({redirectTo: '/'})
