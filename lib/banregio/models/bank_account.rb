module Banregio
  module Models
    class BankAccount
      attr_reader :id, :account_number, :clabe,
                  :info_description, :info_balance,
                  :info_symbol

      def initialize(attrs = {})
        @id = attrs["id"]
        @account_number = attrs["account_number"]
        @clabe = attrs["clabe"]
        @info_description = attrs["info"]["description"]
        @info_balance = attrs["info"]["balance"]
        @info_symbol = attrs["info"]["symbol"]
      end
    end
  end
end
