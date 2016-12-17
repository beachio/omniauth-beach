require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class Beach < OmniAuth::Strategies::OAuth2

      option :name, "beach"

      option :client_options, {
        :site => "https://developer.beach.io",
        :authorize_url => "https://developer.beach.io/oauth/authorize",
        :token_url => "https://developer.beach.io/oauth/token"
      }

      uid { raw_info["user"]["id"] }

      info do
        {
          :last_name => raw_info["user"]["profile"]["last_name"],
          :first_name => raw_info["user"]["profile"]["first_name"],
          :email => raw_info["user"]["email"],
          :sex => raw_info["user"]["profile"]["sex"],
          :birth_date => raw_info["user"]["profile"]["birth_date"],
          :activity => raw_info["user"]["profile"]["activity"]
        }
      end

      def raw_info
        @raw_info ||= access_token.get("/v3/profile.json").parsed
      end
    end
  end
end
