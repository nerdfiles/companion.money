define [
  'angularAMD'
  'angular'
  'routes'
  'angular-route'
], (angularAMD, angular, routes) ->

  deps = [
    'ngRoute'
  ]

  # Declare our application.
  app = angular.module 'MoneyCompanion', deps

  # Implement routes.
  app.config([
    '$routeProvider'
    '$httpProvider'
    '$locationProvider'
    routes
  ])

  $body = angular.element(document)

  angularAMD.bootstrap(app, true, $body)
