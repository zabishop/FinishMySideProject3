class Endorsement < ActiveRecord::Base
  #attr_accessible :endorser, :endorsed
  attr_accessible :side_project_id, :user_id
end
