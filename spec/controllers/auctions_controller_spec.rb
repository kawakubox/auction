require 'rails_helper'

RSpec.describe AuctionsController, type: :controller do
  let(:title) { FFaker::Movie.title }
  describe :create do
    it 'raises ActiveRecord::RecordNotFound when unknown user' do
      expect {
      post '/auctions.json', { auction: { exhibitor: 'hoge', title: title } }
      }.to raise_error ActiveRecord::RecordNotFound
    end    
  end
end
