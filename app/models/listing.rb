class Listing < ActiveRecord::Base
    attr_accessible :uid, :source_name, :source_type, :source_id, :title, :description, :location, :listed_on, :full
end
