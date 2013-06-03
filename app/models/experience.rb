class Experience < ActiveRecord::Base
  attr_accessible :resume_id,:start_date,:end_date,:employer,:city,:state,:position
  
  belongs_to :resume
  has_many :tasks, :dependent => :destroy
end
