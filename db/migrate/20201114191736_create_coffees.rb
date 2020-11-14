class CreateCoffees < ActiveRecord::Migration[6.0]
  def change
    create_table :coffees do |t|
      t.string :name
      t.decimal :price, precision: 5, scale: 2
      t.string :size
      t.text :description

      t.timestamps
    end
  end
end
