class FixColumnName2 < ActiveRecord::Migration[7.0]
  def change
    rename_column :suppliers, :name, :sname
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
