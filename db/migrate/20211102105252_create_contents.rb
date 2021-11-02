class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.string :name
      t.string :description
      t.string :certificate
      t.string :genre
      t.string :type
      t.boolean :with_seasons

      t.timestamps
    end
  end
end
