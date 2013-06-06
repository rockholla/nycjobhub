class Skill < ActiveRecord::Base
  attr_accessible :resume_id,:description
  
  belongs_to :resume
end
