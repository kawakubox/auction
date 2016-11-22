# frozen_string_literal: true
class User < ApplicationRecord
  has_many :bids

  validates :name, presence: true
end
