class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.datetime :date
      t.float :price
      t.string :description
      t.belongs_to :category, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
