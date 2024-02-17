module BusinessLogic
  module Api
    module Data
      class Base < Dry::Struct
        module Types
          include Dry.Types()
        end

        attribute :time, Types::Params::DateTime.optional
        attribute :home_team, Types::String.optional
        attribute :away_team, Types::String.optional
        attribute :home_team_bet, Types::Coercible::Float.optional
        attribute :tie_bet, Types::Coercible::Float.optional
        attribute :away_team_bet, Types::Coercible::Float.optional
      end
    end
  end
end