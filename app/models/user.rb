# frozen_string_literal: true
class User < ApplicationRecord
  has_many :bids

  validates :slack_id, presence: true
  validates :name, presence: true
end
