module Owa
  class Current
    def self.by_city(city, country_code=nil)
      get_weather_with(Requests::Options::City.new(city, country_code))
    end

    def self.by_geocode(lon, lat)
      get_weather_with(Requests::Options::Geocode.new(lon, lat))
    end

    private

    def self.get_weather_with(options)
      Requests::Weather.new(options).call
    end
  end
end
