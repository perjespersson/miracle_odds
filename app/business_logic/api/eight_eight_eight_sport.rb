module BusinessLogic
  module Api
    class EightEightEightSport < Base
      private

      def endpoint
        'https://spectate-web.888sport.se/spectate/sportsbook-req/getTournamentMatches/football/england/england-premier-league'.freeze
      end

      # The cookie has to be updated time to time
      def headers
        {
          "cookie" => "anon_hash=ca1534a41f876ce53ecc22e5a2e5259d; odds_format=DECIMAL; 888Attribution=1; 888Cookie=lang%3Dsv%26OSR%3D1927680; spectate_client_ver=2.58; 888TestData=%7B%22orig-lp%22%3A%22https%3A%2F%2Fwww.888sport.se%2Ffotboll%2Fengland%2Fpremier-league%2F%22%2C%22currentvisittype%22%3A%22Unknown%22%2C%22strategy%22%3A%22UnknownStrategy%22%2C%22strategysource%22%3A%22previousvisit%22%2C%22datecreated%22%3A%222024-02-17T13%3A49%3A38.809Z%22%2C%22expiredat%22%3A%22Sat%2C%2024%20Feb%202024%2013%3A49%3A00%20GMT%22%7D; bbsess=YsPASKw6Xf6DU3VaCpxP0Q3utKg; lang=swe; spectate_session=b1b51985-ca5c-4f4a-99db-c14445fa165c%3Aanon",
          "user-agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36"
        }
      end

      def parse_scope
        ["events"]
      end
    end
  end
end