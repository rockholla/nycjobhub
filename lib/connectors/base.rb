require 'net/https'
require 'uri'
require 'json'
require 'cgi'

module Connectors

    class Base

        SOURCE_TYPE_JOB = 'job'

        def initialize(config = {})
            @config = config.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
        end

        def sync()
        end

        def get(endpoint, params = {})
            query = query_string(params)

            # Create our request
            uri = URI.parse("#{endpoint}?#{query}")
            http = Net::HTTP.new(uri.host, uri.port)

            request = Net::HTTP::Get.new(uri.request_uri)

            # BAM!
            response = http.request(request)

            # Check our response code
            if response.code != "200"
                raise "Error querying \"#{uri.to_s}\": #{response.body}"
            else
                
                if @config[:response_type] == 'json'
                    return JSON::parse(response.body)
                else
                    return response.body
                end

            end
        end

        def save_listing(data)
            listing = Listing.find_or_create_by_uid(data[:uid])
            listing.update_attributes(data)
            return listing
        end

        private
            def query_string(params) 
                # Create query string of escaped key, value pairs
                return params.collect{ |key, val| "#{key}=#{CGI::escape(val.to_s)}" }.join("&")
            end

    end

end