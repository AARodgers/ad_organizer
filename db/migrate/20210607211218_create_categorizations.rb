class CreateCategorizations < ActiveRecord::Migration[6.1]
  def change
    create_table :categorizations do |t|
      t.references :ad_id, null: false, foreign_key: true
      t.references :category_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
