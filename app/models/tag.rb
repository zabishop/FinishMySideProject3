class Tag < ActiveRecord::Base
  has_and_belongs_to_many :side_project
  attr_accessible :name, :side_project
end
