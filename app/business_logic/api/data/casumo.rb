module BusinessLogic
  module Api
    module Data
      class Casumo < Base
        def self.from_api_response(api_response)
          new(
            time: api_response.dig('event', 'start'),
            home_team: api_response.dig('betOffers', 0, 'outcomes', 0, 'participant'),
            away_team: api_response.dig('betOffers', 0, 'outcomes', 2, 'participant'),
            home_team_bet: api_response.dig('betOffers', 0, 'outcomes', 0, 'odds'),
            tie_bet: api_response.dig('betOffers', 0, 'outcomes', 1, 'odds'),
            away_team_bet: api_response.dig('betOffers', 0, 'outcomes', 2, 'odds')
          )
        end
      end
    end
  end
end
