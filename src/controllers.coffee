'use strict'

cvApp = angular.module 'cvApp.controllers', ['firebase', 'ngSanitize']

cvApp.controller 'WebsitesCtrl', ['$scope', 'websiteFactory', ($scope, websiteFactory) ->
	$scope.websites = websiteFactory.data
	console.log $scope.websites
]

cvApp.controller 'NavCtrl', ['$scope', '$location', ($scope, $location) ->
	$scope.isActive = (route) ->
		path = $location.path()
		path.indexOf(route) > -1 
]

# cvApp.controller 'websiteFbCtrl', ['$scope', '$firebase', ($scope, $firebase) ->
#     websiteRef = new Firebase("https://blazing-fire-6088.firebaseio.com/websites");
#     $scope.websites = $firebase(websiteRef);
# ]
