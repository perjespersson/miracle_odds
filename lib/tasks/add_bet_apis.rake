desc "Adds bet-website api details"
task :add_bet_apis, [] => [:environment] do
  api_details = [
    {
      url: "https://www.unibet.se/sportsbook-feeds/views/filter/football/england/premier_league/all/matches",
      name: "Unibet",
      headers: {}
    },
    {
      url: "https://eu-offering-api.kambicdn.com/offering/v2018/speedybetse/listView/football/england/premier_league/all/matches.json?lang=sv_SE&market=SE",
      name: "SpeedyBet",
      headers: {}
    },
    {
      url: "https://spectate-web.888sport.se/spectate/sportsbook-req/getTournamentMatches/football/england/england-premier-league",
      name: "888Sport",
      headers: {
        "cookie" => "anon_hash=ca1534a41f876ce53ecc22e5a2e5259d; odds_format=DECIMAL; 888Attribution=1; 888Cookie=lang%3Dsv%26OSR%3D1927680; spectate_client_ver=2.58; 888TestData=%7B%22orig-lp%22%3A%22https%3A%2F%2Fwww.888sport.se%2Ffotboll%2Fengland%2Fpremier-league%2F%22%2C%22currentvisittype%22%3A%22Unknown%22%2C%22strategy%22%3A%22UnknownStrategy%22%2C%22strategysource%22%3A%22previousvisit%22%2C%22datecreated%22%3A%222024-02-17T13%3A49%3A38.809Z%22%2C%22expiredat%22%3A%22Sat%2C%2024%20Feb%202024%2013%3A49%3A00%20GMT%22%7D; bbsess=YsPASKw6Xf6DU3VaCpxP0Q3utKg; lang=swe; spectate_session=b1b51985-ca5c-4f4a-99db-c14445fa165c%3Aanon",
        "user-agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36"
      }
    },
    {
      url: "https://eu-offering-api.kambicdn.com/offering/v2018/speedyspelse/listView/football/england/premier_league/all/matches.json?lang=sv_SE&market=SE",
      name: "Casumo",
      headers: {}
    }
  ]
  puts api_details.first[:url]
  api_details.each do |api|
    bet_api = BetApi.new(url: api[:url], name: api[:name], headers: api[:headers])
    bet_api.save!
  end
end