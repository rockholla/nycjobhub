class Subtask < ActiveRecord::Base
  attr_accessible :task_id,:description
  
  belongs_to :task
end
