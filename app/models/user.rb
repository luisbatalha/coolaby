class User < ActiveRecord::Base
  has_many :projects
  validates_presence_of :name, :email
  validates_uniqueness_of :email

end
