class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :contents, :type, :types
  end
end
