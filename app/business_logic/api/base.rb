module BusinessLogic
  module Api
    class Base

      def games
        parse_games
      end

      def success?
        response.success?
      end

      private

      def parse_games
        @parse_games ||= JSON.parse(response.body)
                             .dig(*parse_scope)
                             .map{ |game| "BusinessLogic::Api::Data::#{self.class.name.demodulize}".constantize.from_api_response(game)} if success?
      end

      def response
        @response ||= client.get
      end

      def endpoint
        raise StandardError, "Subclasses must implement this method"
      end

      def parse_scope
        raise StandardError, "Subclasses must implement this method"
      end

      def headers
        {}
      end

      def client
        @client ||= Faraday.new(url: endpoint, headers: headers) do |faraday|
          faraday.adapter Faraday.default_adapter
        end
      end
    end
  end
end