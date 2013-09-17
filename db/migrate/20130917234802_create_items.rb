class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.integer :placement
      t.integer :category_id
      t.boolean :visible
      t.decimal :price

      t.timestamps
    end
  end
end
