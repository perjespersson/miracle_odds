module BusinessLogic
  module Api
    class Base

      def games
        @games ||= JSON.parse(response.body)
                             .dig(*parse_scope)
                             .map{ |game| "BusinessLogic::Api::Data::#{self.class.name.demodulize}".constantize.from_api_response(game)} if success?
      end

      def success?
        response.success?
      end

      private

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
        bet_api.url.freeze
      end

      def headers
        bet_api.headers.freeze
      end

      def client
        @client ||= Faraday.new(url: url, headers: headers) do |faraday|
          faraday.adapter Faraday.default_adapter
        end
      end
    end
  end
end