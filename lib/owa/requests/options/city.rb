module Owa
  module Requests
    module Options
      class City
        def initialize(city, country_code=nil)
          @city = city
          @country_code = country_code
        end

        def call
          { q: query }
        end

        private

        def query
          [@city, @country_code].compact.join(",")
        end
      end
    end
  end
end
