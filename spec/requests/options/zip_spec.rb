require "spec_helper"

RSpec.describe Owa::Requests::Options::Zip do
  describe "#call" do
    it "forms the right format of the query" do
      expect(described_class.new("H1A 0A1", "CA").call).to eq({zip: "H1A 0A1,CA"})
    end

    it "will not add a country code if none is given" do
      expect(described_class.new("11205").call).to eq({zip: "11205"})
    end
  end
end
