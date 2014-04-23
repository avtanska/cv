'use strict'

site_data = 'src/site_data.json'

cvApp = angular.module 'cvApp.controllers', ['firebase']

cvApp.controller 'websiteCtrl', ['$scope', '$http', ($scope, $http) ->
    $http.get(site_data).success (data) ->
        $scope.websites = data.websites
]


# cvApp.controller 'websiteFbCtrl', ['$scope', '$firebase', ($scope, $firebase) ->
#     websiteRef = new Firebase("https://blazing-fire-6088.firebaseio.com/websites");
#     $scope.websites = $firebase(websiteRef);
# ]
