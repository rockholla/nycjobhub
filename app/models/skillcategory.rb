class Skillcategory < ActiveRecord::Base
  attr_accessible :resume_id,:description
  
  belongs_to :resume
  has_many :skills, :dependent => :destroy
end
