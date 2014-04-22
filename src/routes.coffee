'use strict'

cvApp = angular.module('cvApp.routes', ['ngRoute'])

cvApp.config ($routeProvider) ->
  $routeProvider.
    when '/', 
      templateUrl: 'partials/home.html'
      controller: ''
    .when '/websites',
      templateUrl: 'partials/websites.html'
      controller: ''
    .when '/cv/fi',
      templateUrl: 'partials/cv_fi.html'
      controller: ''
    .when '/cv/en',
      templateUrl: 'partials/cv_en.html'
      controller: ''
    .when '/github',
      templateUrl: 'partials/github.html'
      controller: ''
    .when '/interests',
      templateUrl: 'partials/interests.html'
      controller: ''
    .otherwise 
      redirectTo: '/'