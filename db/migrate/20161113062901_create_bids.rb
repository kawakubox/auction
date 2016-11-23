# frozen_string_literal: true
class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids, force: :cascade do |t|
      t.integer :auction_id, null: false
      t.string  :bidder_id,  null: false
      t.integer :price,      null: false
      t.timestamps

      t.index [:auction_id, :created_at]
    end
  end
end
