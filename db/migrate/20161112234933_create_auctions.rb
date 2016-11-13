# frozen_string_literal: true
class CreateAuctions < ActiveRecord::Migration[5.0]
  def change
    create_table :auctions do |t|
      t.string  :title,        null: false
      t.integer :exhibitor_id, null: false

      t.timestamps
    end
  end
end
