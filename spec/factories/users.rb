# frozen_string_literal: true
FactoryGirl.define do
  factory :user do
    id { FFaker::String.from_regexp(/U[0-9][0-9A-Z][0-9A-Z][0-9A-Z][0-9A-Z][0-9A-Z][0-9A-Z][0-9A-Z][0-9A-Z]/) }
    name { FFaker::Name.first_name.downcase }
  end
end
