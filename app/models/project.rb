class Project < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :abstract, :title
  validates_uniqueness_of :title
end
