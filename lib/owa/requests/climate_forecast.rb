module Owa
  module Requests
    # note, cnt option is not supported for this endpoint
    # also according to support, only the pro subdomain works for this endpoint
    class ClimateForecast < Weather
      # note if we blindly copy the other classes and end with a slash, the generated request
      # becomes `.../climate/month/?appid=...` and we get a 404 back from the server.  Without
      # the end slash, we get a valid response.  :shrug:
      ENDPOINT_PATH = "climate/month".freeze
    end
  end
end
