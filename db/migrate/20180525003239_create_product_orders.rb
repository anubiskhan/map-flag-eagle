class CreateProductOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :product_orders do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.numeric :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
