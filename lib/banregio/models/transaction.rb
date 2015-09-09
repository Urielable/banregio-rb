require "banregio/models/business"

module Banregio
  module Models
    class Transaction
      attr_reader :transaction_number, :reference_number, :description,
                  :amount, :date, :business

      def initialize(attrs = {})
        @transaction_number = attrs["transaction_number"]
        @reference_number = attrs["reference_number"]
        @description = attrs["description"]
        @amount = attrs["amount"]
        @date = Date.parse(attrs["date"])
        @business = Business.new(attrs["business"]) unless attrs["business"].empty?
      end

      def business?
        !@business.nil?
      end
    end
  end
end
