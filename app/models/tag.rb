class Tag < ActiveRecord::Base
  has_and_belongs_to_many :side_projects
  attr_accessible :name
end
