/*Place all the behaviors and hooks related to the matching controller here
 *All this logic will automatically be available in application.js.
 *You can use JavaScript in this file.
*/

var myModule = angular.module('Coppis', ["ui.bootstrap"]);


myModule.controller('MainCtrl', function($scope) {

/* upvote implementation */
$scope.upVote = function(post) {
  post.vote_count++;
};

$scope.downVote = function(post) {
  post.vote_count--;
};


  $scope.posts = [
            {vote_count:'201', product_name:'Supreme x Nike Air Force 1 "Red' , brand_name: '(Supreme)' , comment_count: '90', user_name: 'jordandrew', last_post: '3 hours'},
            {vote_count:'185', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '66', user_name: 'Nigo', last_post: '3 hours'},
            {vote_count:'120', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '45', user_name: 'Ben Baller', last_post: '4 hours'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '33', user_name: 'jordandrew', last_post: '4 hours'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow', last_post: '5 hours'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi', last_post: '4 hours'},
            {vote_count:'201', product_name:'Supreme x Nike Air Force 1 "Red' , brand_name: '(Supreme)' , comment_count: '90', user_name: 'jordandrew', last_post: '3 hours'},
            {vote_count:'185', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '66', user_name: 'Nigo', last_post: '3 hours'},
            {vote_count:'120', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '45', user_name: 'Ben Baller', last_post: '4 hours'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '33', user_name: 'jordandrew', last_post: '4 hours'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow', last_post: '5 hours'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi', last_post: '4 hours'},
            {vote_count:'201', product_name:'Supreme x Nike Air Force 1 "Red' , brand_name: '(Supreme)' , comment_count: '90', user_name: 'jordandrew', last_post: '3 hours'},
            {vote_count:'185', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '66', user_name: 'Nigo', last_post: '3 hours'},
            {vote_count:'120', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '45', user_name: 'Ben Baller', last_post: '4 hours'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '33', user_name: 'jordandrew', last_post: '4 hours'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow', last_post: '5 hours'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi', last_post: '4 hours'},
            {vote_count:'201', product_name:'Supreme x Nike Air Force 1 "Red' , brand_name: '(Supreme)' , comment_count: '90', user_name: 'jordandrew', last_post: '3 hours'},
            {vote_count:'185', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '66', user_name: 'Nigo', last_post: '3 hours'},
            {vote_count:'120', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '45', user_name: 'Ben Baller', last_post: '4 hours'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '33', user_name: 'jordandrew', last_post: '4 hours'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow', last_post: '5 hours'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi', last_post: '4 hours'},
            {vote_count:'201', product_name:'Supreme x Nike Air Force 1 "Red' , brand_name: '(Supreme)' , comment_count: '90', user_name: 'jordandrew', last_post: '3 hours'},
            {vote_count:'185', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '66', user_name: 'Nigo', last_post: '3 hours'},
            {vote_count:'120', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '45', user_name: 'Ben Baller', last_post: '4 hours'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '33', user_name: 'jordandrew', last_post: '4 hours'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow', last_post: '5 hours'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi', last_post: '4 hours'},
            {vote_count:'201', product_name:'Supreme x Nike Air Force 1 "Red' , brand_name: '(Supreme)' , comment_count: '90', user_name: 'jordandrew', last_post: '3 hours'},
            {vote_count:'185', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '66', user_name: 'Nigo', last_post: '3 hours'},
            {vote_count:'120', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '45', user_name: 'Ben Baller', last_post: '4 hours'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '33', user_name: 'jordandrew', last_post: '4 hours'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow', last_post: '5 hours'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi', last_post: '4 hours'},
            {vote_count:'201', product_name:'Supreme x Nike Air Force 1 "Red' , brand_name: '(Supreme)' , comment_count: '90', user_name: 'jordandrew', last_post: '3 hours'},
            {vote_count:'185', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '66', user_name: 'Nigo', last_post: '3 hours'},
            {vote_count:'120', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '45', user_name: 'Ben Baller', last_post: '4 hours'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '33', user_name: 'jordandrew', last_post: '4 hours'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow', last_post: '5 hours'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi', last_post: '4 hours'}

        ];    
});

/* navbar button controller */
angular.module('ui.bootstrap').controller('ButtonsCtrl', function ($scope) {

	$scope.radioModel = 'Popular';

});


