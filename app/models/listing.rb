class Listing < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :user
  has_many :bookmarks, :dependent => :destroy
  has_many :listings, :through => :bookmarks
end
