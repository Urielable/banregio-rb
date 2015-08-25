module Banregio
  module Models
    class Business
      attr_reader :id, :name, :activity_id,
                  :activity_name

      def initialize(attrs = {})
        @id = attrs["id"]
        @name = attrs["name"]
        @activity_id = attrs["activity"]["id"]
        @activity_name = attrs["activity"]["name"]
      end
    end
  end
end
