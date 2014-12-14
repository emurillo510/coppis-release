class Brand < ActiveRecord::Base
   ##############
   #Associations#
   ##############
   has_many :posts
   has_many :products


   # Override /:id by calling query_id method
   def to_param
      query
   end

   # Replaces /:id to this.title (post title)
   def query
      name.downcase.gsub(" ", "-")
   end
   
end
