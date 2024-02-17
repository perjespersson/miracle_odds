module BusinessLogic
  module Api
    module Data
      class EightEightEightSport < Base
        def self.from_api_response(api_response)
          home_team = api_response.dig(1, "competitors").values.find{ |hash| hash["is_home_team"] }["name"]
          away_team = api_response.dig(1, "competitors").values.find{ |hash| !hash["is_home_team"] }["name"]

          new(
            time: api_response.dig(1, "start_time"),
            home_team: home_team,
            away_team: away_team,
            home_team_bet: api_response.dig(1, "markets", "3", "selections").values.find{ |hash| hash["name"] == home_team }&.dig("decimal_price"),
            tie_bet: api_response.dig(1, "markets", "3", "selections").values.find{ |hash| hash["name"] == "Oavgjort"}&.dig("decimal_price"),
            away_team_bet: api_response.dig(1, "markets", "3", "selections").values.find{ |hash| hash["name"] == away_team }&.dig("decimal_price")
          )
        end
      end
    end
  end
end
