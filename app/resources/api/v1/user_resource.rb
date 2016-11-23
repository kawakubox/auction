module Api
  module V1
    class UserResource < JSONAPI::Resource
      attributes :slack_id
      attributes :name
      key_type :string
    end
  end
end
