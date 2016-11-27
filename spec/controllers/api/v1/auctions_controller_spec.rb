# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Api::V1::AuctionsController do
  describe '#create' do
    it do
      post :create, params: { title: 'PSVR', exhibitor: 'U0D9F0BA1', format: :json }
      expect(response).to have_http_status :ok
    end
  end
end
