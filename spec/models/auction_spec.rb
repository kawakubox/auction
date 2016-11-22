# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Auction, type: :model do
  subject { FactoryGirl.build(:auction) }

  it { is_expected.to be_respond_to :bids }

  it { is_expected.to be_invalid_on(:title).with(nil) }
  it { is_expected.to be_invalid_on(:title).with('') }
  it { is_expected.to be_invalid_on(:exhibitor).with(nil) }
  it { is_expected.to be_invalid_on(:starting_price).with(nil) }
  it { is_expected.to be_invalid_on(:starting_price).with(123.4) }
  it { is_expected.to be_invalid_on(:state).with(nil) }
end
