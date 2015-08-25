module Banregio
  class APIClient
    attr_reader :access_token

    include HTTParty
    base_uri "banregio-api.herokuapp.com"
    headers "Content-Type" => "application/json"
    headers "Accept" => "application/vnd.banregio-v0.0.beta1+json"

    include BankAccount
    include Transaction

    def initialize(access_token)
      @access_token = access_token
      self.class.headers "Authorization" => "Bearer #{access_token}"
    end

  end
end
