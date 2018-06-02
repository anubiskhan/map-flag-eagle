class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.text :static_url
    end
  end
end
