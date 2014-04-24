(function() {
  'use strict';
  var cvApp;

  cvApp = angular.module('cvApp.controllers', ['firebase', 'ngSanitize']);

  cvApp.controller('WebsitesCtrl', [
    '$scope', 'websiteFactory', function($scope, websiteFactory) {
      $scope.websites = websiteFactory.data;
      return console.log($scope.websites);
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
