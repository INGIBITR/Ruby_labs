class CreateGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :goods do |t|
      t.string :title, null: false
      t.integer :price, null: false
      t.string :amount, null: false

      t.timestamps
    end
  end
end
