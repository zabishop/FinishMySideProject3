class SideProject < ActiveRecord::Base

  attr_accessible :description, :image_url, :project_title, :side_project_id, :user, :repo_url

  has_many :comments, :dependent => :destroy
  belongs_to :user

  validates :description, :image_url, :project_title, :presence => true
  validates :project_title, :uniqueness =>  true

end
