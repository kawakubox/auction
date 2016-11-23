# frozen_string_literal: true
class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, force: :cascade do |t|
      t.string :slack_id, null: false
      t.string :name,     null: false

      t.timestamps
      t.index [:slack_id], unique: true
    end
  end
end
