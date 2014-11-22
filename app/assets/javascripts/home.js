/*Place all the behaviors and hooks related to the matching controller here
 *All this logic will automatically be available in application.js.
 *You can use JavaScript in this file.
*/

var myModule = angular.module('Coppis', ["ui.bootstrap"]);


myModule.controller('MainCtrl', function($scope) { 
  $scope.posts = [
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},{vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'},
            {vote_count:'120', product_name:'Shark Reflector Full Zip Hoodie' , brand_name: '(Bape)' , comment_count: '20', user_name: 'jordandrew'},
            {vote_count:'45', product_name:'Ben Baller x Diamond Eye Mary T-Shirt' , brand_name: '(Diamond Supply Co)' , comment_count: '33', user_name: 'Nigo'},
            {vote_count:'89', product_name:'Staple x Natural Varsity Jacket' , brand_name: '(Staple)' , comment_count: '44', user_name: 'Ben Baller'},
            {vote_count:'44', product_name:'Vincent Zip Hoody' , brand_name: '(Undefeated)' , comment_count: '18', user_name: 'taylor_meadow'},
            {vote_count:'70', product_name:'Honofknlulu T-Shirt' , brand_name: '(Black Label)' , comment_count: '12', user_name: 'blacklabelhi'}

        ];    
});

/* navbar button controller */
angular.module('ui.bootstrap').controller('ButtonsCtrl', function ($scope) {

	$scope.radioModel = 'Popular';

});
