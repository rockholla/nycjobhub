class Skill < ActiveRecord::Base
  attr_accessible :skillcategory_id,:description
  
  belongs_to :skillcategory
end
