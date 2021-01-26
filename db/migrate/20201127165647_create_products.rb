class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :price
      t.integer :category_id
      t.boolean :availability
      t.json :sizes
      t.json :ptypes
      t.json :colors

      t.timestamps
    end
  end
end
