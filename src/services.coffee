'use strict'

cvApp = angular.module 'cvApp.services', ['firebase']

site_data = 'src/site_data.json'

cvApp.factory 'websiteFactory', ['$http','$firebase', ($http, $firebase) ->
	websiteRef = new Firebase("https://blazing-fire-6088.firebaseio.com/websites");
	websites = $firebase(websiteRef);
	{
		websites: websites
	}
]

