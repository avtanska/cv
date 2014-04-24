(function() {
  'use strict';
  var cvApp, site_data;

  site_data = 'src/site_data.json';

  cvApp = angular.module('cvApp.controllers', ['firebase', 'ngSanitize']);

  cvApp.controller('WebsitesCtrl', [
    '$scope', '$http', function($scope, $http) {
      return $http.get(site_data).success(function(data) {
        return $scope.websites = data.websites;
      });
    }
  ]);

  cvApp.controller('NavCtrl', [
    '$scope', '$location', function($scope, $location) {
      return $scope.isActive = function(route) {
        var path;
        path = $location.path();
        return path.indexOf(route) > -1;
      };
    }
  ]);

}).call(this);
