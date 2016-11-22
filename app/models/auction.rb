# frozen_string_literal: true
class Auction < ApplicationRecord
  belongs_to :exhibitor, class_name: :User, foreign_key: :exhibitor_id

  has_many :bids

  enum state: { closed: 0, opened: 1, accepted: 2 }

  validates :title, presence: true
  validates :exhibitor, presence: true
  validates :starting_price, numericality: { only_integer: true }
  validates :state, inclusion: { in: Auction.states }
end
