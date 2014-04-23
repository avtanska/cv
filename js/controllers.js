(function() {
  'use strict';
  var cvApp, site_data;

  site_data = 'src/site_data.json';

  cvApp = angular.module('cvApp.controllers', ['firebase']);

  cvApp.controller('websiteCtrl', [
    '$scope', '$http', function($scope, $http) {
      return $http.get(site_data).success(function(data) {
        return $scope.websites = data.websites;
      });
    }
  ]);

}).call(this);
