'use strict'

cvApp = angular.module 'cvApp.controllers', []

cvApp.controller 'WebsitesCtrl', ['$scope', 'websiteFactory', ($scope, websiteFactory) ->
	$scope.websites = websiteFactory.websites
]

cvApp.controller 'NavCtrl', ['$scope', '$location', '$anchorScroll', ($scope, $location, $anchorScroll) ->
	$scope.isActive = (route) ->
		path = $location.path()
		path.indexOf(route) > -1
	$scope.goToTop = ->
		$location.hash('top')
		$anchorScroll()
]

# cvApp.controller 'websiteFbCtrl', ['$scope', '$firebase', ($scope, $firebase) ->
#     websiteRef = new Firebase("https://blazing-fire-6088.firebaseio.com/websites");
#     $scope.websites = $firebase(websiteRef);
# ]
