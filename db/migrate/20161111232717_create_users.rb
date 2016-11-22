# frozen_string_literal: true
class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, id: false do |t|
      t.string :id,                primary_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
