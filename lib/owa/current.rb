module Owa
  class Current
    REQUEST_KLASS = "Owa::Requests::Weather".freeze

    def self.by_city(city, country_code=nil)
      get_weather_with(Requests::Options::City.new(city, country_code))
    end

    def self.by_geocode(lon, lat)
      get_weather_with(Requests::Options::Geocode.new(lon, lat))
    end

    def self.by_zip(zip, country_code=nil)
      get_weather_with(Requests::Options::Zip.new(zip, country_code))
    end

    private

    def self.get_weather_with(options)
      Object.const_get(self::REQUEST_KLASS).new(options).call
    end
  end
end
