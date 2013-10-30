class User < ActiveRecord::Base
  
  before_save { |user| user.email = email.downcase }

  attr_accessible :name, :email, :bio, :password, :password_confirmation

  
  validates_presence_of :name, :email
  validates_uniqueness_of :email

  has_secure_password
  validates :password, length: { minimum: 6 }
  
  
  has_many :projects

end
