module BusinessLogic
  module Api
    module Data
      class Base < Dry::Struct
        module Types
          include Dry.Types()
        end

        attribute :time, Types::String
        attribute :home_team, Types::String
        attribute :away_team, Types::String
        attribute :home_team_bet, Types::String
        attribute :tie_bet, Types::String
        attribute :away_team_bet, Types::String
      end
    end
  end
end