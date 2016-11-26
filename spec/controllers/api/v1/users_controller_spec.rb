# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Api::V1::UsersController do
  describe '#create' do
    let(:user_params) { { slack_id: 'U0A3DB97E', name: 'kawakubox' } }
    it do
      params = user_params.merge(format: :json)
      post :create, params: params
      expect(response).to have_http_status :ok
    end

    it do
      User.create(user_params)
      params = user_params.merge(format: :json)
      post :create, params: params
      expect(response).to have_http_status :ok
    end
  end
end
