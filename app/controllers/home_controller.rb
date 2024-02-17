class HomeController < ApplicationController
  def index
    @unibet = BusinessLogic::Api::Unibet.new.games.sort_by(&:time)
    @eighteighteightsport = BusinessLogic::Api::EightEightEightSport.new.games.sort_by(&:time)
    @speedy_bet = BusinessLogic::Api::SpeedyBet.new.games.sort_by(&:time)
    @casumo = BusinessLogic::Api::Casumo.new.games.sort_by(&:time)
  end
end
