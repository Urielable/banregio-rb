require 'banregio/models/bank_account'
require 'pry'

module Banregio
  module BankAccount

    def bank_accounts
      response = self.class.get("/accounts")
      response['accounts'].map { |attrs| Banregio::Models::BankAccountFactory.build(attrs) }
    end

    def link_bank_account_for_client(client_number, card_details = {})
      response = self.class.put("/accounts/", body: {
        client: {
          number: client_number
        },
        card: card_details
      }.to_json)

      Banregio::Models::BankAccountFactory.build(response["account"])
    end
  end
end
