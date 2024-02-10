class HomeController < ApplicationController
  def index
    @unibet = BusinessLogic::Api::Unibet.new.games
    @betsson = BusinessLogic::Api::Betsson.new.games
    @eighteighteightsport = BusinessLogic::Api::EightEightEightSport.new.games
  end
end
