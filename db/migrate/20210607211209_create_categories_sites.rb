class CreateCategoriesSites < ActiveRecord::Migration[6.1]
  def change
    create_table :categories_sites do |t|
      t.boolean :enabled
      t.references :site_id, null: false, foreign_key: true
      t.references :category_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
