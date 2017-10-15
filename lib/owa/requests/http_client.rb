module Owa
  module Requests
    class HttpClient
			attr_reader :conn

      def initialize(conn: nil)
        @conn = conn || Faraday.new(url:"https://api.openweathermap.org/data/2.5")
      end

      def get(endpoint, params = {})
        conn.get(endpoint, default_params.merge(params))
      end

      private

      def default_params
				{ appid: "test" }
      end
    end
  end
end
