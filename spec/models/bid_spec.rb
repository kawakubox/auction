# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Bid, type: :model do
  subject { FactoryGirl.build(:bid) }
  it { is_expected.to be_invalid_on(:auction).with(nil) }
  it { is_expected.to be_invalid_on(:bidder).with(nil) }
  it { is_expected.to be_invalid_on(:bidded_at).with(nil) }
end
