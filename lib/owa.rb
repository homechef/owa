require "faraday"
require_relative "owa/version"
require_relative "owa/base"
require_relative "owa/current"
require_relative "owa/forecast"
require_relative "owa/future_forecast"
require_relative "owa/climate_forecast"
require_relative "owa/errors"
require_relative "owa/configuration"
require_relative "owa/requests/http_client"
require_relative "owa/requests/parser"
require_relative "owa/requests/weather"
require_relative "owa/requests/forecast"
require_relative "owa/requests/future_forecast"
require_relative "owa/requests/climate_forecast"
require_relative "owa/requests/options/city"
require_relative "owa/requests/options/geocode"
require_relative "owa/requests/options/zip"


module Owa
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
