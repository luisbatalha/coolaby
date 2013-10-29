class Project < ActiveRecord::Base

  attr_accessible :title, :abstract
  
  validates_presence_of :abstract, :title
  validates_uniqueness_of :title

  belongs_to :user

end
