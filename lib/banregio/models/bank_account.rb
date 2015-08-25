module Banregio
  module Models
    class BankAccountFactory

      def self.build(attrs = {})
        is_credit_card = attrs["is_credit_card"] || false

        {
          true => CreditBankAccount,
          false => DebitBankAccount
        }.fetch(is_credit_card).new(attrs)
      end
    end

    class BankAccount
      attr_reader :id, :card_number,
                  :balance, :account_number

      def initialize(attrs = {})
        @id = attrs["id"]
        @card_number = attrs["card_number"]
        @balance = attrs["balance"]
        @account_number = attrs["account_number"]
      end
    end

    class CreditBankAccount < BankAccount
      attr_reader :limit, :annual_percentage_rate, :closing_date,
                  :last_closing_date, :statement_balance, :minimum_payment,
                  :due_date

      def initialize(attrs = {})
        super(attrs)
        @limit = attrs["limit"]
        @annual_percentage_rate = attrs["annual_percentage_rate"]
        @closing_date = Date.parse(attrs["closing_date"])
        @last_closing_date = Date.parse(attrs["last_closing_date"])
        @statement_balance = attrs["statement_balance"]
        @minimum_payment = attrs["minimum_payment"]
        @due_date = attrs["due_date"]
      end
    end

    class DebitBankAccount < BankAccount
      attr_reader :clabe

      def initialize(attrs = {})
        super(attrs)
        @clabe = attrs["clabe"]
      end
    end
  end
end
