require "spec_helper"

RSpec.describe Owa::Requests::Parser do
  describe "#call" do
    it "takes a response and parses it with Json and OpenStruct" do
      response = "{\"status\":\"OK\",\"description\":\"test\"}"

      parsed = described_class.new.call(response)

      expect(parsed.status).to eq("OK")
      expect(parsed.description).to eq("test")
    end
  end
end
