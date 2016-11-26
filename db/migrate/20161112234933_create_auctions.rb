# frozen_string_literal: true
class CreateAuctions < ActiveRecord::Migration[5.0]
  def change
    create_table :auctions, force: :cascade do |t|
      t.string  :title,          null: false
      t.string  :exhibitor_id,   null: false
      t.integer :starting_price, null: false, default: 0
      t.integer :state,          null: false, default: 0
      t.timestamps

      t.index [:exhibitor_id]
    end
  end
end
