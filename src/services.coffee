'use strict'

cvApp = angular.module 'cvApp.services', []

site_data = 'src/site_data.json'

cvApp.factory 'websiteFactory', ['$http','$timeout', ($http, $timeout) ->
	console.log 'inside websiteFactory'
	site = $http.get(site_data).success (data) ->
		console.log 'haettiin koko data'
		data
	console.log 'palautetaan site.websites'
	{
		data: site.websites
	}
]

