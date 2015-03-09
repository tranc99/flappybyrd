angular
    .module('myApp', ['ngAnimate', 'ui.router', 'templates'])
    .config(($stateProvider, $urlRouterProvider, $locationProvider) ->
        
        # routes and states
        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'home.html',
                controller: 'HomeCtrl'
                })

        $urlRouterProvider.otherwise '/cats'

        #enable HTML5 Mode for SEO
        $locationProvider.html5Mode(true)
        
    )
