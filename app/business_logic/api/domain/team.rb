module BusinessLogic
  module Domain
    class Team

      def self.map_team_name(team_name)
        self.translated_team_names[team_name].presence || team_name
      end

      private

      def self.translated_team_names
        {
          "Nottingham Forest" => "Nottingham",
          "Brighton & Hove Albion" => "Brighton",
          "AFC Bournemouth" => "Bournemouth",
          "Wolverhampton Wanderers" => "Wolves",
          "Tottenham Hotspur" => "Tottenham"
        }
      end
    end
  end
end