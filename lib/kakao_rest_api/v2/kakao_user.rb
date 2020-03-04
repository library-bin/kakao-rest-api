require 'rest-client'
require 'rest_client_ext'

class KakaoRestApi
  module V2
    class KakaoUser
      HOST_KAUTH = 'https://kauth.kakao.com'.freeze
      HOST_KAPI  = 'https://kapi.kakao.com'.freeze

      def self.me(access_token, property_keys = [], secure_resource = false)
        authorization = "Bearer #{access_token}"
        params        = {
          propertyKeys:    property_keys,
          secure_resource: secure_resource
        }

        request_url = "#{HOST_KAPI}/v2/user/me"
        RestClientExt.post(request_url, params, Authorization: authorization)
      end

      # https://developers.kakao.com/docs/restapi/user-management#사용자-정보-요청
      def self.me_with_admin(admin_key, user_id, property_keys = [], secure_resource = false)
        authorization = "KakaoAK #{admin_key}"
        params        = {
          target_id_type:  'user_id',
          target_id:       user_id,
          propertyKeys:    property_keys,
          secure_resource: secure_resource,
        }

        request_url = "#{HOST_KAPI}/v2/user/me"
        RestClientExt.post(request_url, params, Authorization: authorization)
      end
    end
  end
end
