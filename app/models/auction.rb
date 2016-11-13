# frozen_string_literal: true
class Auction < ApplicationRecord
  belongs_to :exhibitor, class_name: :User, foreign_key: :exhibitor_id

  has_many :bids

  validates :title, presence: true
  validates :exhibitor, presence: true
end
