require "faraday"
require_relative "owa/version"
require_relative "owa/configuration"
require_relative "owa/requests/http_client"
require_relative "owa/requests/parser"
require_relative "owa/requests/weather"

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
