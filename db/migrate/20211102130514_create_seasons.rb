class CreateSeasons < ActiveRecord::Migration[6.1]
  def change
    create_table :seasons do |t|
      t.string :name
      t.string :description
      t.string :certificate

      t.timestamps
    end
  end
end
