class Tag < ActiveRecord::Base
  belongs_to :side_project
  attr_accessible :name, :side_project
end
