class Education < ActiveRecord::Base
  attr_accessible :resume_id,:start_date,:end_date,:school_name,:city,:state,:major,:minor,:degree,:gpa,:honor_1,:honor_2
  
  belongs_to :resume
  # has_many :tasks, :dependent => :destroy
end
