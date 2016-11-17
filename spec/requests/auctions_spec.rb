# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'Auctions Request' do
  let!(:exhibitor) { FactoryGirl.create(:user) }
  let(:title) { FFaker::Movie.title }
  let(:params) do
    { auction: { exhibitor: exhibitor.slack_id, title: title } }
  end
  it 'returns :created' do
    post '/auctions.json', params: params
    expect(response).to have_http_status :created
  end
end
