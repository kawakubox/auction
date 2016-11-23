# frozen_string_literal: true
FactoryGirl.define do
  factory :auction do
    title FFaker::Movie.title
    exhibitor factory: :user
    starting_price { Random.rand(1_000..10_000) }
    state Auction.states.fetch(:closed)
  end
end
