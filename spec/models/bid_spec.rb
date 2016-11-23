# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Bid, type: :model do
  subject { FactoryGirl.build(:bid) }
  it { is_expected.to be_invalid_on(:auction).with(nil) }
  it { is_expected.to be_invalid_on(:bidder).with(nil) }
  it { is_expected.to be_invalid_on(:price).with(0) }
  it { is_expected.to be_valid_on(:price).with(1) }
end
