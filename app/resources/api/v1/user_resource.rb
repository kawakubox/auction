module Api
  module V1
    class UserResource < JSONAPI::Resource
      attributes :slack_id
    end
  end
end
