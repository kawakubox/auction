# frozen_string_literal: true
FactoryGirl.define do
  factory :bid do
    auction_id :auction
    bidded_at Time.current
    bidder factory: :user
  end
end
