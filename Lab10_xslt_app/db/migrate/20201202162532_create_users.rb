# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :title
      t.string :email
      t.string :email

      t.timestamps
    end
  end
end
