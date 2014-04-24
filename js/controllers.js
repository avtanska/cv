(function() {
  'use strict';
  var cvApp, site_data;

  site_data = 'src/site_data.json';

  cvApp = angular.module('cvApp.controllers', ['firebase', 'ngSanitize']);

  cvApp.controller('WebsitesCtrl', [
    '$scope', '$http', '$location', function($scope, $http, $location) {
      $scope.isActive = function(route) {
        return route === $location.path();
      };
      return $http.get(site_data).success(function(data) {
        return $scope.websites = data.websites;
      });
    }
  ]);

  cvApp.controller('NavCtrl', [
    '$scope', '$location', function($scope, $location) {
      return $scope.isActive = function(route) {
        return route === $location.path();
      };
    }
  ]);

}).call(this);
