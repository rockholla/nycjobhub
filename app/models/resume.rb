class Resume < ActiveRecord::Base
  attr_accessible :user_id,:last_name,:first_name,:address,:city,:state,:zip,:email,:phone,:alt_1,:alt_tag_1,:alt_2,:alt_tag_2
  
  belongs_to :user
  has_many :experiences, :dependent => :destroy
  has_many :educations, :dependent => :destroy
  has_many :skills, :dependent => :destroy  
  
  default_scope :order => 'resumes.created_at DESC'
  
  def is_empty?
    if self.educations.empty? && self.experiences.empty? && self.skills.empty?
      return true
    else
      return false
    end
  end
  
  def html_wrapped  # returns html wrapped resume string ready to be sent to html to pdf api
  end
  
end
