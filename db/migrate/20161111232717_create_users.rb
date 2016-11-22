# frozen_string_literal: true
class CreateUsers < ActiveRecord::Migration[5.0]
  def change
      t.string :id,                primary_key: true
    create_table :users, force: :cascade, id: false do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
