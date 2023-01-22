# frozen_string_literal: true

require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    # Authentication strategy for connecting with APIs constructed using
    # the [OAuth 2.0 Specification](http://tools.ietf.org/html/draft-ietf-oauth-v2-10).
    # You must generally register your application with the provider and
    # utilize an application id and secret in order to authenticate using
    # OAuth 2.0.
    class Gong < OmniAuth::Strategies::OAuth2
      option :name, 'gong'
      option :client_options, { site: 'https://app.gong.io', authorize_url: '/oauth2/authorize', token_url: '/oauth2/generate-token' }
      option :pkce, false

      private

      def callback_url
        full_host + callback_path
      end

      def token_params
        auth_header = "Basic #{Base64.strict_encode64("#{options.client_id}:#{options.client_secret}")}"
        super.merge(headers: { Authorization: auth_header })
      end
    end
  end
end
