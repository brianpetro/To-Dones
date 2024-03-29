app = angular.module("Todone", ["ngResource"])

app.factory "Done", ["$resource", ($resource) ->
  $resource("/to_dones", {}, {update: {method: "PUT"}})
]

@MainCtrl = ["$scope", "Done", ($scope, Done) ->
  $scope.to_dones = Done.query()

  $scope.addTodone = ->
  	todone = Done.save $scope.newTodone, ->
			$scope.to_dones = Done.query()
		$scope.newTodone = {}
]
