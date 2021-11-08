class ChangeTypesToContentType < ActiveRecord::Migration[6.1]
  def change
    rename_column :contents, :types, :content_type
  end
end
