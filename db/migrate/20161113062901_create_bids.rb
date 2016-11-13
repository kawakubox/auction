# frozen_string_literal: true
class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.integer :auction_id,  null: false
      t.timestamp :bidded_at, null: false
      t.integer :bidder_id,   null: false

      t.timestamps

      t.foreign_key :auction
      t.foreign_key :user, column: :bidder_id

      t.index [:auction_id, :bidded_at]
    end
  end
end
