# frozen_string_literal: true
require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryGirl.build(:user) }

  it { is_expected.to be_invalid_on(:slack_id).with(nil) }
  it { is_expected.to be_invalid_on(:name).with(nil) }
end
