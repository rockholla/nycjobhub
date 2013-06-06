require 'base'
require 'date'

module Connectors
    
    class Nycjobs < Connectors::Base

        def initialize()
            config = {
                :endpoint       => 'http://data.cityofnewyork.us/resource/kpav-sd4t.json',
                :response_type  => 'json'
            }
            super(config)
        end

        def sync(params = {})
            result = []
            self.get(@config[:endpoint], params).each do |item|
                if item["job_id"].to_i > 0 
                    date, *time = item["posting_date"].split(/ /)
                    date_parts  = date.split(/\//)
                    posting_date = date_parts[2] + '-' + date_parts[0] + '-' + date_parts[1] + ' ' + time[0]
                    result.push(self.save_listing(
                        :uid            => "nycjobs_" + item["job_id"].to_s,
                        :source_name    => "nycjobs",
                        :source_id      => item["job_id"].to_s,
                        :source_type    => SOURCE_TYPE_JOB,
                        :title          => item["civil_service_title"].to_s,
                        :description    => item["job_description"].to_s,
                        :location       => item["work_location"].to_s,
                        :listed_on      => posting_date,
                        :full           => item.to_json
                    ))
                end
            end
            return result
        end

    end

end