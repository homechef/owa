require "spec_helper"

RSpec.describe Owa do
  it "has a version number" do
    expect(Owa::VERSION).not_to be nil
  end

  describe ".configuration" do
    before do
      Owa.configure do |config|
        config.api_url="https://tester.com"
        config.appid="test"
        config.units="metric"
      end
    end

    it "sets the configurations" do
      expect(Owa::configuration.api_url).to eq("https://tester.com")
      expect(Owa::configuration.appid).to eq("test")
      expect(Owa::configuration.units).to eq("metric")
    end

    after do
      Owa.reset
    end
  end
end
