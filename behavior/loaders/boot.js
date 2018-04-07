// Generated by CoffeeScript 1.11.1
(function() {
  require.config({
    baseUrl: './behavior/',
    paths: {
      angular: '../../vendors/angular/angular.min',
      angularAMD: '../../vendors/angularAMD/angularAMD.min',
      'angular-route': '../../vendors/angular-route/angular-route.min',
      bootstrap: './bootstrap/base',
      "interface": './interface',
      routes: './routes',
      HomeController: './modules/home/controllers/base',
      homeDirective: './modules/home/directives/base'
    },
    shim: {
      angular: {
        exports: 'angular'
      },
      'angular-route': ['angular'],
      angularAMD: ['angular'],
      ngload: ['angularAMD']
    },
    deps: ['bootstrap']
  });

}).call(this);
