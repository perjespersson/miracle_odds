module BusinessLogic
  module Api
    class Unibet < Base
      private

      def name
        "Unibet"
      end

      def parse_scope
        ["layout", "sections", 1, "widgets", 0, "matches", "events"]
      end
    end
  end
end