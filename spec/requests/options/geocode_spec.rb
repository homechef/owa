require "spec_helper"

RSpec.describe Owa::Requests::Options::Geocode do
  describe "#call" do
    it "forms the right format of the query" do
      expect(described_class.new("50", "130").call).to eq({lat: "50", lon: "130"})
    end
  end
end

