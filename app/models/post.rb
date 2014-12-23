class Post < ActiveRecord::Base
   ##############
   #Associations#
   ##############
   belongs_to :user
   belongs_to :brand
   has_many :comments
   has_many :upvotes
   
   ####################
   #set default values#
   ####################
   after_initialize :init

   #############
   #validations#
   #############
   validates_presence_of :query

   #Paperclip for easy upload management for ActiveRecord
   has_attached_file :image, :styles => { :medium => "600x400>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
   validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

   #Active Record Reputation System
   has_reputation :votes, source: :user, aggregated_by: :sum
   
   # Initializes vote_ciunt and comment_count 0.
   def init
      self.vote_count  ||= 0 # will set the default value only if it's nil
      self.comment_count ||= 0 # will set the default value only if it's nil
   end

   # Override /:id by calling query_id method
   def to_param
      query_id
   end

   # Replaces /:id to this.title (post title)
   def query_id
      title.downcase.gsub(" ", "-")  
   end

end