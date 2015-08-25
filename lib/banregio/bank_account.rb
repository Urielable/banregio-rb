require 'banregio/models/bank_account'

module Banregio
  module BankAccount

    def bank_accounts
      response = self.class.get("/accounts")
      response.map { |attrs| Banregio::Models::BankAccount.new(attrs) }
    end
  end
end
