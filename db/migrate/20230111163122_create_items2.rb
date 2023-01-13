class CreateItems2 < ActiveRecord::Migration[7.0]
  def change
    create_table :items2 do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.timestamps
    end
  end
end
