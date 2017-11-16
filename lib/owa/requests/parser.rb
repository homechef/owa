require "json"
module Owa
  module Requests
    class Parser
      def call(response)
        case response.status
        when 400
          raise BadRequest.new
        when 401
          raise Unauthorized.new
        when 404
          raise NotFound.new
        else
          begin
            JSON.parse(response.body, object_class: OpenStruct)
          rescue => e
            raise BadResponse.new(e.inspect, response.inspect)
          end
        end
      end
    end
  end
end
