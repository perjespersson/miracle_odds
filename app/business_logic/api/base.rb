module BusinessLogic
  module Api
    class Base
      def games
        @games ||= parsed_games_from_response
      end

      def success?
        response.success?
      end

      private

      def parsed_games_from_response
        if success?
          JSON.parse(response.body)
              .dig(*parse_scope)
              .map{ |game| "BusinessLogic::Api::Data::#{self.class.name.demodulize}".constantize.from_api_response(game)}
        else
          []
        end
      end

      def response
        @response ||= client.get
      end

      def parse_scope
        raise StandardError, "Subclasses must implement this method"
      end

      def bet_api
        @bet_api ||= BetApi.find_by(name: name)
      end

      def url
        bet_api.url
      end

      def headers
        bet_api.headers
      end

      def client
        @client ||= Faraday.new(url: url, headers: headers) do |faraday|
          faraday.adapter Faraday.default_adapter
        end
      end
    end
  end
end