(function(){
	"use strict"

	angular.module("app").controller("userRatingCtrl", function($scope, $http) {

		$scope.setup = function(id){
			$scope.tacoId = id;
			$http.get("/api/v1/tacos/" + id + "/user_ratings.json").then(function(response) {
				$scope.user_ratings = response.data;
			});
		}//close setup

		$scope.addUserRating = function(taste_rating, heat_rating){
			var user_rating = {
				taste_rating: taste_rating,
				heat_rating: heat_rating,
			};
			console.log(user_rating);
			console.log('hello taste');
			$http.post("/api/v1/tacos/" + $scope.tacoId + "/user_ratings.json", user_rating).then(function(response){
				$scope.newTasteRating = null;
				$scope.newHeatRating = null;
				$http.get("/api/v1/tacos/" + $scope.tacoId + "/user_ratings.json").then(function(response) {
					$scope.user_ratings = response.data;
				});
			}, function(error){
				$scope.errors = error.data.errors;
			});
				$scope.errors = null;
		};
		window.scope = $scope;
	});//close req app & restaurantCtrl
}());