module Owa
  module Requests
    class Weather
      ENDPOINT_PATH = "weather/".freeze

      def initialize(options, parser: Parser.new, http_client: HttpClient.new)
        @parser = parser
        @http_client = http_client
        @options = options.call
      end

      def call
        response = @http_client.get(self.class::ENDPOINT_PATH, @options)
        @parser.call(response)
      end
    end
  end
end
