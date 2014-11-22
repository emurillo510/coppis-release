// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require angular
//= require bootstrap-sprockets
//= require_tree .


var myModule = angular.module('Coppis', []);


myModule.controller('MainCtrl', function($scope) { 
  $scope.posts = [
            {vote_count:'201', product_name:'Nike Air Force 1.' , brand_name: 'Nike' , comment_count: '20'},
            {vote_count:'120', product_name:'Bomber Jacket.' , brand_name: 'Bomber' , comment_count: '2'},
            {vote_count:'16',  product_name:'Adidas Campus.' , brand_name: 'Adidas' , comment_count: '16'},
            {vote_count:'69',  product_name:'Puma Suede.' , brand_name: 'Puma' , comment_count: '91'},
            {vote_count:'810', product_name:'Dope Hat.' , brand_name: 'Blackscale' , comment_count: '45'},
            {vote_count:'413', product_name:'Savs Shirt.' , brand_name: 'Savs' , comment_count: '8'},
        ];    
});
