# frozen_string_literal: true
class User < ApplicationRecord
  validates :slack_id, presence: true
  validates :name, presence: true
end
