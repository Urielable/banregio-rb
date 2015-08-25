require 'banregio/models/bank_account'

module Banregio
  module BankAccount

    def bank_accounts
      response = self.class.get("/accounts")
      response.map { |attrs| Banregio::Models::BankAccountFactory.build(attrs) }
    end

    def link_bank_account(client_number, card_details = {})
      response = self.put("/accounts", body: {
        client: {
          number: client_number
        },
        card: card_details
      })

      Banregio::Models::BankAccountFactory.build(response)
    end
  end
end
