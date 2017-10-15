require "spec_helper"

RSpec.describe Owa::Requests::HttpClient do
  describe "#get" do
    it "sends a get message to client" do
      conn = double(Faraday)
      request = described_class.new(conn: conn)

      expect(request.conn).to receive(:get)
        .with("/test", { appid: "test", test: "test" })

      request.get("/test", {test: "test"})
    end
  end
end
