class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :suppliers, :type, :provides
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
