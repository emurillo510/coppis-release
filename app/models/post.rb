class Post < ActiveRecord::Base
	belongs_to :user
	has_one :brand
	has_one :product
	has_many :comments

	def index

	end

	def new 

	end

	def create

	end

	def show

    end 

	def edit

	end

	def update
		
	end

	def destroy

	end
end
