class Bet < ApplicationRecord
  validates_presence_of :home_team, :away_team, :kick_off
end
