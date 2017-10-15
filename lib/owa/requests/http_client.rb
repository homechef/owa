module Owa
  module Requests
    class HttpClient
			attr_reader :conn

      def initialize(conn: nil)
        @conn = conn || Faraday.new(url: Owa::configuration.api_url)
      end

      def get(endpoint, params = {})
        conn.get(endpoint, default_params.merge(params))
      end

      private

      def default_params
				{ appid: Owa::configuration.appid }
      end
    end
  end
end
