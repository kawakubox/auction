# frozen_string_literal: true
FactoryGirl.define do
  factory :auction do
    title FFaker::Movie.title
    exhibitor factory: :user
  end
end
