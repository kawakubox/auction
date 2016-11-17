require 'rails_helper'

RSpec.describe 'Auctions Request' do
  let!(:exhibitor) { FactoryGirl.create(:user) }
  let(:title) { FFaker::Movie.title }
  it 'returns :created' do
    post '/auctions.json', auction: { exhibitor: exhibitor.slack_id, title: title }
    expect(response).to have_http_status :created
  end
end
