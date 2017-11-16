module Owa
  module Requests
    module Options
      class City
        def initialize(city, country_code=nil, cnt=nil)
          @city = city
          @country_code = country_code
          @cnt = cnt
        end

        def call
          params = { q: query }
          params.merge!(cnt: @cnt) if @cnt
          params
        end

        private

        def query
          [@city, @country_code].compact.join(",")
        end
      end
    end
  end
end
