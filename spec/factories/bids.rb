# frozen_string_literal: true
FactoryGirl.define do
  factory :bid do
    auction
    bidder factory: :user
    price Random.rand(100..10_000)
  end
end
