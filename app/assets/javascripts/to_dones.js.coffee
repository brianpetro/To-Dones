app = angular.module("Todone", ["ngResource"])

app.factory "To_done", ["$resource", ($resource) ->
  $resource("/to_dones")
]

@MainCtrl = ["$scope", "To_done", ($scope, To_done) ->
  $scope.to_dones = To_done.query()
  $scope.addTodone = ->
		$scope.to_dones.push($scope.newTodone)
		$scope.newTodone = {}
]
