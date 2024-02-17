module BusinessLogic
  module Api
    class Unibet < Base
      private

      def endpoint
        'https://www.unibet.se/sportsbook-feeds/views/filter/football/england/premier_league/all/matches'.freeze
      end

      def parse_scope
        ["layout", "sections", 1, "widgets", 0, "matches", "events"]
      end
    end
  end
end