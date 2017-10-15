module Owa
  module Requests
    module Options
      class Geocode
        def initialize(lon, lat)
          @lon = lon
          @lat = lat
        end

        def call
          { lon: @lon, lat: @lat }
        end
      end
    end
  end
end

