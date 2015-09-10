require "httparty"
require "active_support"

module Banregio

  MODES_URLS = {
    :sandbox => "https://sandbox.banregio.com",
    :production => "https://api.banregio.com"
  }

  class << self
    attr_reader :access_token
  end

  # The keys to use for user authentication
  mattr_accessor :mode
  @@mode = :sandbox

  mattr_reader :base_uri
  @@base_uri = MODES_URLS[@@mode]

  # Method for configuration
  def self.setup
    yield self
  end

end

require "banregio/version"
require "banregio/bank_account"
require "banregio/transaction"
require "banregio/api_client"
