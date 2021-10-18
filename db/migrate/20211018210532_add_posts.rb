# frozen_string_literal: true

class AddPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :city
      t.string :note
      t.decimal :temperature

      t.timestamps
    end
  end
end
