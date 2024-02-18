module BusinessLogic
  module Api
    class SpeedyBet < Base
      private

      def name
        "SpeedyBet"
      end

      def parse_scope
        ["events"]
      end
    end
  end
end