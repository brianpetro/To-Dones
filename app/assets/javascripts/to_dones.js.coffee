app = angular.module("Todone", ["ngResource"])

app.factory "To_done", ["$resource", ($resource) ->
  $resource("/to_dones", {}, {update: {method: "PUT"}})
]

@MainCtrl = ["$scope", "To_done", ($scope, To_done) ->
  $scope.to_dones = To_done.query()

  $scope.addTodone = ->
  	todone = To_done.save $scope.newTodone, ->
			$scope.to_dones = To_done.query()
		$scope.newTodone = {}
]
