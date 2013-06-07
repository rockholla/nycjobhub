require 'base'
require 'date'

module Connectors
    
    class Dcafec < Connectors::Base

        def initialize()
            config = {
                :endpoint       => 'http://data.cityofnewyork.us/resource/dt2z-amuf.json',
                :response_type  => 'json'
            }
            super(config)
        end

        def sync(params = {})
            result = []
            self.get(@config[:endpoint], params).each do |item|
                as_json = item.to_json
                id = Digest::MD5.hexdigest(as_json)
                result.push(self.save_listing(
                    :uid            => "dcafce_" + id,
                    :source_name    => "dcafce",
                    :source_id      => item["telephone"].to_s,
                    :source_type    => SOURCE_TYPE_CENTER,
                    :title          => item["host_organization"].to_s,
                    :description    => item["provider"].to_s,
                    :location       => item["site_location_address"].to_s + ',' + item["city"].to_s + ' ' + item["zip_code"].to_s,
                    :full           => as_json
                ))
            end
            return result
        end

    end

end