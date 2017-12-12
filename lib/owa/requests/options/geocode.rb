module Owa
  module Requests
    module Options
      class Geocode
        def initialize(lat, lon, cnt=nil)
          @lat = lat
          @lon = lon
          @cnt = cnt
        end

        def call
          params = { lat: @lat, lon: @lon }
          params.merge!(cnt: @cnt) if @cnt
          params
        end
      end
    end
  end
end
