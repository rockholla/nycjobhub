require 'base'

module Connectors
    
    class Nycjobs < Connectors::Base

        DOMAIN = 'data.cityofnewyork.us'
        RESOURCE = 'kpav-sd4t.json'

        def initialize
            super(:domain => DOMAIN)
        end

        def search(on)

            return self.get(RESOURCE)

        end

    end

end