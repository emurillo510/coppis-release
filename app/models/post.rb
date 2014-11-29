class Post < ActiveRecord::Base
   ##############
   #Associations#
   ##############
   belongs_to :user
   belongs_to :brand
   has_many :comments
   
   ####################
   #set default values#
   ####################

   #Paperclip for easy upload management for ActiveRecord
   has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
   validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


   def init
      self.vote_count  ||= 0           #will set the default value only if it's nil
   end

end
