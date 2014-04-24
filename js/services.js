(function() {
  'use strict';
  var cvApp, site_data;

  cvApp = angular.module('cvApp.services', []);

  site_data = 'src/site_data.json';

  cvApp.factory('websiteFactory', [
    '$http', '$timeout', function($http, $timeout) {
      var site;
      console.log('inside websiteFactory');
      site = $http.get(site_data).success(function(data) {
        console.log('haettiin koko data');
        return data;
      });
      console.log('palautetaan site.websites');
      return {
        data: site.websites
      };
    }
  ]);

}).call(this);
