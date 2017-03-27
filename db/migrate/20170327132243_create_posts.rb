# frozen_string_literal: true
class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :content, null: false
      t.integer :like, null: false

      t.timestamps null: false
    end
  end
end
