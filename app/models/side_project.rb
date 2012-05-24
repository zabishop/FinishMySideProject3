class SideProject < ActiveRecord::Base

  attr_accessible :description, :image_url, :project_title, :side_project_id, :user, :repo_url, :tags_attributes

  validates :description, :image_url, :project_title, :presence => true
  validates :project_title, :uniqueness =>  true

  has_many :comments, :dependent => :destroy
  has_many :tags
  belongs_to :user



  accepts_nested_attributes_for :tags, :allow_destroy => :true,
                                :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

end
