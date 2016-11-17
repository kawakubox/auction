# frozen_string_literal: true
require 'rails_helper'

RSpec.describe AuctionsController do
  let(:title) { FFaker::Movie.title }
  let(:params) do
    { auction: { exhibitor: 'hoge', title: title } }
  end
  describe '#create' do
    it 'raises ActiveRecord::RecordNotFound when unknown user' do
      expect { post :create, params: params }.to raise_error ActiveRecord::RecordNotFound
    end
  end
end
