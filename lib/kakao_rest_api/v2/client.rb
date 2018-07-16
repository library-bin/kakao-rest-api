require 'kakao_rest_api/v2/kakao_user'

class KakaoRestApi
  module V2
    class Client
      attr_accessor :app_key, :admin_key, :authorize_code, :redirect_uri

      HOST_KAUTH = 'https://kauth.kakao.com'.freeze
      HOST_KAPI  = 'https://kapi.kakao.com'.freeze

      def initialize(app_key, admin_key, redirect_uri)
        self.app_key      = app_key
        self.admin_key    = admin_key
        self.redirect_uri = redirect_uri
      end

      def me(access_token, property_keys = [], secure_resource = false)
        KakaoRestApi::V2::KakaoUser.me access_token, property_keys, secure_resource
      end

      def me_with_admin(user_id, property_keys = [], secure_resource = false)
        KakaoRestApi::V2::KakaoUser.me_with_admin admin_key, user_id, property_keys, secure_resource
      end
    end
  end
end
