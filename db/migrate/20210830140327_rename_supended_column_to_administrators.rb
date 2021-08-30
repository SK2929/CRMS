class RenameSupendedColumnToAdministrators < ActiveRecord::Migration[6.0]
  def change
    rename_column :administrators, :supended, :suspended
  end
end
