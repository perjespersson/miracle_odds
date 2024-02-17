module BusinessLogic
  module Api
    class Casumo < Base
      private

      def endpoint
        'https://eu-offering-api.kambicdn.com/offering/v2018/speedyspelse/listView/football/england/premier_league/all/matches.json?lang=sv_SE&market=SE'.freeze
      end

      def parse_scope
        ["events"]
      end
    end
  end
end