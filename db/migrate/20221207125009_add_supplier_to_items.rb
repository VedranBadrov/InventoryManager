class AddSupplierToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :supplier, :string
  end
end
