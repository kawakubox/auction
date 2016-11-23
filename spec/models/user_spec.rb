# frozen_string_literal: true
require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryGirl.build(:user) }

  it { is_expected.to be_respond_to :bids }

  it { is_expected.to be_invalid_on(:slack_id).with(nil) }
  it 'is invalid when slack_id is duplicated' do
    FactoryGirl.create(:user, slack_id: subject.slack_id)
    is_expected.to be_invalid_on(:slack_id)
  end
  it { is_expected.to be_invalid_on(:name).with(nil) }
end
