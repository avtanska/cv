(function() {
  'use strict';
  var cvApp, site_data;

  cvApp = angular.module('cvApp.services', ['firebase']);

  site_data = 'src/site_data.json';

  cvApp.factory('websiteFactory', [
    '$http', '$firebase', function($http, $firebase) {
      var websiteRef, websites;
      websiteRef = new Firebase("https://blazing-fire-6088.firebaseio.com/websites");
      websites = $firebase(websiteRef);
      return {
        websites: websites
      };
    }
  ]);

}).call(this);
