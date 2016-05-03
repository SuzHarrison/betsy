class CreateCartEntries < ActiveRecord::Migration
  def change
    create_table :cart_entries do |t|
      t.integer, :cart_id
      t.integer, :product_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end