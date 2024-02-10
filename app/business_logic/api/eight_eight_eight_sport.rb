module BusinessLogic
  module Api
    class EightEightEightSport < Base
      private

      def endpoint
        'https://spectate-web.888sport.se/spectate/sportsbook-req/getTournamentMatches/football/england/england-premier-league'.freeze
      end

      def headers
        {
          "cookie" => "bbsess=9f9KkHB0uG2K57b3xJg2WIrQvjx; lang=swe; anon_hash=ca1534a41f876ce53ecc22e5a2e5259d; odds_format=DECIMAL; 888Attribution=1; 888Cookie=lang%3Dsv%26OSR%3D1911954; spectate_client_ver=2.58; 888TestData=%7B%22referrer%22%3A%22https%3A%2F%2Fwww.google.com%2F%22%2C%22last-referrer%22%3A%22https%3A%2F%2Fwww.google.com%2F%22%2C%22orig-lp%22%3A%22https%3A%2F%2Fwww.888sport.se%2F%22%2C%22currentvisittype%22%3A%22SEO%22%2C%22strategy%22%3A%22SeoStrategy%22%2C%22strategysource%22%3A%22previousvisit%22%2C%22publisher%22%3A%22SearchEngine%22%2C%22datecreated%22%3A%222024-02-10T13%3A35%3A22.874Z%22%2C%22expiredat%22%3A%22Sat%2C%2017%20Feb%202024%2013%3A35%3A00%20GMT%22%7D; spectate_session=37a10c78-00d2-477b-bc97-662dc9aaf3f7%3Aanon",
          "user-agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36"
        }
      end

      def parse
        ["events"]
      end
    end
  end
end