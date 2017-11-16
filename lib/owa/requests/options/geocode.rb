module Owa
  module Requests
    module Options
      class Geocode
        def initialize(lon, lat, cnt=nil)
          @lon = lon
          @lat = lat
          @cnt = cnt
        end

        def call
          params = { lon: @lon, lat: @lat }
          params.merge!(cnt: @cnt) if @cnt
          params
        end
      end
    end
  end
end
