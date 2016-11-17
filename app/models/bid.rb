# frozen_string_literal: true
class Bid < ApplicationRecord
  belongs_to :auction
  belongs_to :bidder, class_name: :User, foreign_key: :bidder_id

  validates :bidded_at, presence: true
  validates :auction, presence: true
  validates :bidder, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
