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

  cvApp.controller('websiteFbCtrl', [
    '$scope', '$firebase', function($scope, $firebase) {
      var websiteRef;
      websiteRef = new Firebase("https://blazing-fire-6088.firebaseio.com/websites");
      return $scope.websites = $firebase(websiteRef);
    }
  ]);

}).call(this);
