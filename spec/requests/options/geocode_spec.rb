require "spec_helper"

RSpec.describe Owa::Requests::Options::Geocode do
  describe "#call" do
    it "forms the right format of the query" do
      expect(described_class.new("130", "50").call).to eq({lon: "130", lat: "50"})
    end
  end
end

