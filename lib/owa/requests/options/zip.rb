module Owa
  module Requests
    module Options
      class Zip
        def initialize(zip, country_code=nil)
          @zip = zip
          @country_code = country_code
        end

        def call
          { zip: query }
        end

        private

        def query
          [@zip, @country_code].compact.join(",")
        end
      end
    end
  end
end
