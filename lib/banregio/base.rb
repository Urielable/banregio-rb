module Banregio
  class Base
    attr_reader :access_token

    include HTTParty
    base_uri "banregio-api.herokuapp.com"
    headers "Content-Type" => "application/json"

    # Creates a new API client.
    # @param [String] access_token access token
    def initialize(access_token)
      @access_token = access_token
    end
  end
end
