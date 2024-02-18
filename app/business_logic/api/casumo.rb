module BusinessLogic
  module Api
    class Casumo < Base
      private

      def name
        "Casumo"
      end

      def parse_scope
        ["events"]
      end
    end
  end
end