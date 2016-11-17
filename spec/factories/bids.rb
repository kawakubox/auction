# frozen_string_literal: true
FactoryGirl.define do
  factory :bid do
    auction
    bidded_at Time.current
    bidder factory: :user
    amount Random.rand(100..10_000)
  end
end
