class Task < ActiveRecord::Base
  attr_accessible :experience_id,:description
  
  belongs_to :experience
  has_many :subtasks, :dependent => :destroy
end
