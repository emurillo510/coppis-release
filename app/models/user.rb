class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable #:validatable

  ##############
  #Associations#
  ###############
  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :upvotes
  
  ###############
  ##validations##
  ###############

  validates_uniqueness_of :username

  #Active Record Reputation System
  has_many :evaluations, class_name: "RSEvaluation", as: :source
  has_reputation :votes, source: {reputation: :votes, of: :posts}, aggregated_by: :sum

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.username = auth.info.nickname
      user.provider = auth.provider
      user.uid = auth.uid
      user.oauth_token = auth.credentials.token
      user.twitter_avatar = auth.info.image
    end
  end

  def self.new_with_session(params, session)
  	if session["devise.user_attributes"]
  		new(session["devise.user_attributes"], without_protection: true) do |user|
  			user.attributes = params
  		end
  	else
  		super
  	end	
  end

  def password_required?
     super && provider.blank?
  end

  def update_with_password(params, *options)
  	if encrypted_password.blank?
  		update_attributes(params, *options)
  	else
  		super
  	end
  end

  def upvotes?(post)
    post.upvotes.where(user_id: id).any?
  end

  #Active Record Reputation System
  def voted_for?(post)
    evaluations.where(target_type: post.class, target_id: post.id).present?
  end
end
