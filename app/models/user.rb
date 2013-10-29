class User < ActiveRecord::Base
  
  before_save { |user| user.email = email.downcase }

  attr_accessible :name, :email, :password, :password_confirmation

  
  validates_presence_of :name, :email
  validates_presence_of :password, length: { minimum: 6 }
  validates_presence_of :password_confirmation
  validates_uniqueness_of :email

  
  has_many :projects

end
