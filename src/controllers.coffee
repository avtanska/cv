'use strict'

site_data = 'src/site_data.json'

cvApp = angular.module 'cvApp.controllers', ['firebase', 'ngSanitize']

cvApp.controller 'WebsitesCtrl', ['$scope', '$http', ($scope, $http) ->
	$http.get(site_data).success (data) ->
        	$scope.websites = data.websites
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
