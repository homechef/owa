require "spec_helper"

RSpec.describe Owa::Requests::Options::City do
  describe "#call" do
    it "forms the right format of the query" do
      expect(described_class.new("berlin", "DE").call).to eq({q: "berlin,DE"})
    end

    it "will not add a country code if none is given" do
      expect(described_class.new("berlin").call).to eq({q: "berlin"})
    end
  end
end
