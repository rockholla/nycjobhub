# == Schema Information
# Schema version: 20110321200826
#

require 'digest'
class User < ActiveRecord::Base
  
  attr_accessible :email, :password, :password_confirmation
  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
  has_many :resumes, :dependent => :destroy
  
  has_many :bookmarks, :dependent => :destroy
  has_many :listings, :through => :bookmarks
  
  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
    
end
