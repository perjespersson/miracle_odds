module BusinessLogic
  module Api
    class Base

      def games
        fetch_games
      end

      private

      def fetch_games
        @fetch_games ||= begin
          if response.success?
            JSON.parse(response.body).dig(*parse).map do |game|
              "BusinessLogic::Api::Data::#{self.class.name.demodulize}".constantize.from_api_response(game)
            end
          else
            nil
          end
        end
      end

      def response
        @response ||= client.get
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