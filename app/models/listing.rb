require 'base'
require 'nycjobs'
require 'dcafec'

class Listing < ActiveRecord::Base
    attr_accessible :uid, :source_name, :source_type, :source_id, :title, :description, :location, :listed_on, :full
    
    belongs_to :user
    has_many :bookmarks, :dependent => :destroy
    has_many :listings, :through => :bookmarks
    
    default_scope :order => 'listings.listed_on DESC'

    include Tire::Model::Search
    include Tire::Model::Callbacks

    def self.sync_all
        Connectors::Nycjobs.new.sync()
        Connectors::Dcafec.new.sync()
    end
    
end
