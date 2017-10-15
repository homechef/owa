require "spec_helper"

RSpec.describe Owa::Requests::Parser do
  describe "#call" do
    it "takes a response and parses it with Json and OpenStruct" do
      body = "{\"status\":\"OK\",\"description\":\"test\"}"
      response = double("response", body: body, status: 200)

      parsed = described_class.new.call(response)

      expect(parsed.status).to eq("OK")
      expect(parsed.description).to eq("test")
    end

    it "raises error if the response is a defined error" do
      response = double("response", status: 400)

      parser = described_class.new

      expect{ parser.call(response) }.to raise_error(Owa::BadRequest)
    end
  end
end
