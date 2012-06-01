class Comment < ActiveRecord::Base
  belongs_to :side_project
  attr_accessible :body, :commenter, :side_project

  validates :body, :presence => true
end
