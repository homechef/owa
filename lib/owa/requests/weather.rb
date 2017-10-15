module Owa
  module Requests
    class Weather
      def initialize(parser: Parser.new, http_client: HttpClient.new)
        @parser = parser
        @http_client = http_client
        @options = {q: "berlin"}
      end

      def call
        response = @http_client.get("weather/", @options)
        @parser.call(response.body)
      end
    end
  end
end
