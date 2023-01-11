class DropSuppliers < ActiveRecord::Migration[7.0]
  def change
    drop_table :suppliers, force: :cascade
  end
end
