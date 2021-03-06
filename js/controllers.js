(function() {
  'use strict';
  var cvApp;

  cvApp = angular.module('cvApp.controllers', []);

  cvApp.controller('WebsitesCtrl', [
    '$scope', 'websiteFactory', function($scope, websiteFactory) {
      $scope.websites = websiteFactory.websites;
      return $scope.websites.$on('loaded', function() {
        return $scope.websitesLoaded = true;
      });
    }
  ]);

  cvApp.controller('NavCtrl', [
    '$scope', '$location', '$anchorScroll', function($scope, $location, $anchorScroll) {
      $scope.isActive = function(route) {
        var path;
        path = $location.path();
        return path.indexOf(route) > -1;
      };
      return $scope.goToTop = function() {
        $location.hash('top');
        return $anchorScroll();
      };
    }
  ]);

}).call(this);
