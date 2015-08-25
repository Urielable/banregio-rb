require "httparty"

module Banregio
  class << self
    attr_reader :access_token
  end
end

require "banregio/version"
require "banregio/bank_account"
require "banregio/transaction"
require "banregio/api_client"
