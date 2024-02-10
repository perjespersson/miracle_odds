module BusinessLogic
  module Api
    module Data
      class EightEightEightSport < Base
        def self.from_api_response(api_response)
          new(
            time: api_response.dig(1, "start_time"),
            home_team: api_response.dig(1, "markets", "3", "selections").values.first.dig("name"),
            away_team: api_response.dig(1, "markets", "3", "selections").values.third.dig("name"),
            home_team_bet: api_response.dig(1, "markets", "3", "selections").values.first.dig("decimal_price"),
            tie_bet: api_response.dig(1, "markets", "3", "selections").values.second.dig("decimal_price"),
            away_team_bet: api_response.dig(1, "markets", "3", "selections").values.third.dig("decimal_price")
          )
        end
      end
    end
  end
end
