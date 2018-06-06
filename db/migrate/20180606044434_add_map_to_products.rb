class AddMapToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :map, foreign_key: true
  end
end
