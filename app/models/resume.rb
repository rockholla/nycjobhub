class Resume < ActiveRecord::Base
  attr_accessible :last_name,:first_name,:address,:city,:state,:zip,:email,:phone,:alt_1,:alt_tag_1,:alt_2,:alt_tag_2
  
  has_many :experiences, :dependent => :destroy
  has_many :educations, :dependent => :destroy
  has_many :skillcategories, :dependent => :destroy
end
