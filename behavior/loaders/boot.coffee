require.config
  baseUrl: './behavior/'
  paths:
    angular         : '../../vendors/angular/angular.min'
    angularAMD      : '../../vendors/angularAMD/angularAMD.min'
    'angular-route' : '../../vendors/angular-route/angular-route.min'
    bootstrap       : './bootstrap/base'
    interface       : './interface'
    routes          : './routes'
    HomeController  : './modules/home/controllers/base'
  shim:
    angular:
      exports: 'angular'
    'angular-route' : ['angular']
    angularAMD      : ['angular']
    ngload          : ['angularAMD'] # namespaces for extensions; consider Modernizr.
  deps: [
    'bootstrap'
  ]
