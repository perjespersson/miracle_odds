module BusinessLogic
  module Api
    module Data
      class Unibet < Base
        def self.from_api_response(api_response)
          new(
            time: api_response.dig('event', 'start'),
            home_team: api_response.dig('betOffers', 0, 'outcomes', 0, 'participant'),
            away_team: api_response.dig('betOffers', 0, 'outcomes', 2, 'participant'),
            home_team_bet: api_response.dig('betOffers', 0, 'outcomes', 0, 'oddsDecimal').to_f * 1000,
            tie_bet: api_response.dig('betOffers', 0, 'outcomes', 1, 'oddsDecimal').to_f * 1000,
            away_team_bet: api_response.dig('betOffers', 0, 'outcomes', 2, 'oddsDecimal').to_f * 1000
          )
        end
      end
    end
  end
end
