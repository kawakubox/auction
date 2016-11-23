# frozen_string_literal: true
class User < ApplicationRecord
  self.primary_key = :slack_id
  has_many :bids

  validates :slack_id, presence: true, uniqueness: true
  validates :name, presence: true
end
