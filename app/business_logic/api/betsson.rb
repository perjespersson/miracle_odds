module BusinessLogic
  module Api
    class Betsson < Base
      private

      def fetch_games
        @fetch_games ||= begin
          if response.success?
            JSON.parse(response.body)["data"]["selections"]
          else
            nil
          end
        end
      end

      def endpoint
        'https://www.betsson.com/api/sb/v1/widgets/events-table/v2?categoryIds=1&competitionIds=3&eventPhase=Prematch&eventSortBy=StartDate&maxMarketCount=1&pageNumber=1'.freeze
      end

      def headers
        {
          "brandid" => "e123be9a-fe1e-49d0-9200-6afcf20649af",
          "marketcode" => "sv",
          "referer" => "https://www.betsson.com/sv/odds/fotboll/england/premier-league-epl",
          "user-agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36"
        }
      end
    end
  end
end