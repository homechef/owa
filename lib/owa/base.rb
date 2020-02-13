module Owa
  class Base
    def self.by_city(city, country_code: nil, cnt: nil)
      get_weather_with(Requests::Options::City.new(city, country_code, cnt))
    end

    def self.by_geocode(lat, lon, cnt: nil)
      get_weather_with(Requests::Options::Geocode.new(lat, lon, cnt))
    end

    def self.by_zip(zip, country_code: nil, cnt: nil)
      get_weather_with(Requests::Options::Zip.new(zip, country_code, cnt))
    end

    private

    def self.get_weather_with(options)
      Object.const_get(self::REQUEST_KLASS).new(options).call
    end
  end
end
