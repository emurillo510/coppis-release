class Product < ActiveRecord::Base

   ##############
   #Associations#
   ##############
   has_one :brand
   
    
end
