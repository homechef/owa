module Owa
  class OwaErrors < StandardError; end

  class BadResponse < OwaErrors
    attr_reader :message, :response_body
    def initialize(message, body)
      @message, @response_body = message, body
    end
  end

  class BadRequest < OwaErrors
    def message
      "That was a bad request"
    end
  end

  class Unauthorized < OwaErrors
    def message
      "Looks like you are not authorized"
    end
  end

  class NotFound < OwaErrors
    def message
      "I couldn't find that"
    end
  end
end
