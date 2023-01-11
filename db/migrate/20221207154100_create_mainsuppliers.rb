class CreateMainsuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :mainsuppliers do |t|
      t.string :name
      t.string :supply

      t.timestamps
    end
  end
end
