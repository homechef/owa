require "spec_helper"

RSpec.describe Owa::Requests::Forecast do
 describe "#call" do
    it "gets the response from client and passes the body to parser" do
      parser = double(Owa::Requests::Parser)
      options = double(Owa::Requests::Options::City, call: {q: "berlin"})
      response = double("response", body: "body")
      client = double(Owa::Requests::HttpClient, get: response)
      request = described_class.new(options, parser: parser, http_client: client)

      expect(client).to receive(:get).with("forecast/", {q: "berlin"})
      expect(parser).to receive(:call)

      request.call
    end
  end

 describe "constants" do
   it "defines its own ENDPOINT_PATH constant" do
     expect(described_class::ENDPOINT_PATH).to eq("forecast/")
   end
 end
end
