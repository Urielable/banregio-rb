require 'banregio/models/transaction'

module Banregio
  module Transaction

    def transactions(account_id)
      response = self.class.get("/accounts/#{account_id}/transactions")
      response["transactions"].map { |attrs| Banregio::Models::Transaction.new(attrs) }
    end
  end
end
