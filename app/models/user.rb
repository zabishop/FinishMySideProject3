class User < ActiveRecord::Base

  attr_accessible :name, :password_digest, :password, :password_confirmation, :email, :profile_pic

  has_many :side_projects

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_secure_password
end
