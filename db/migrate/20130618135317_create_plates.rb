class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :name
      t.text :description
      t.boolean :contains_nuts
      t.integer :number_of_ingredients

      t.timestamps
    end
  end
end
