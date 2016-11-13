# frozen_string_literal: true
class Auction < ApplicationRecord
  belongs_to :exhibitor, class_name: 'User', foreign_key: 'exhibitor_id'

  validates :title, presence: true
  validates :exhibitor, presence: true
end
