class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.string :lat
      t.string :long
      t.string :zoom
      t.text :static_url, default: ''

      t.timestamps
    end
  end
end
