(function() {
  var app;

  app = angular.module('cvApp.controllers', []);

  app.controller('websiteCtrl', [
    '$scope', '$http', function($scope, $http) {
      return $scope.websites = [
        {
          url: 'avtanska.webfaction.com',
          description: 'This site. :) Simple website to display blaalbaa, AngularJS, Firebase diibadaaba',
          tags: ['HTML', 'SASS', 'Bootstrap', 'CoffeeScript', 'AngularJS', 'Firebase'],
          images: ['django1.jpg', 'django2.jpg']
        }, {
          url: 'www.kiuas.net',
          description: 'Website for our heavy metal band Kiuas. Data such as gigs, news etc. are in a MySQL database. PHP is used to communicate with the DB and used for some other logic on the site. Also includes a light admin page for updating news, gigs, reviews and interviews. The site has gone through several designs throughout the years. Most of the graphics by me.',
          tags: ['HTML', 'CSS', 'PHP', 'MySQL'],
          images: ['django1.jpg']
        }
      ];
    }
  ]);

}).call(this);
