module Owa
  module Requests
    module Options
      class Zip
        def initialize(zip, country_code=nil, cnt=nil)
          @zip = zip
          @country_code = country_code
          @cnt = cnt
        end

        def call
          params = { zip: query }
          params.merge!(cnt: @cnt) if @cnt
          params
        end

        private

        def query
          [@zip, @country_code].compact.join(",")
        end
      end
    end
  end
end
