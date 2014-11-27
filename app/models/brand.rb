class Brand < ActiveRecord::Base
   ##############
   #Associations#
   ##############
   has_many :posts
   has_many :products
   
end
