require "json"
module Owa
  module Requests
    class Parser
      def call(response)
        JSON.parse(response, object_class: OpenStruct)
      end
    end
  end
end
