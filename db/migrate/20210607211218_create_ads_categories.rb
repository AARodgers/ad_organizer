class CreateAdsCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :ads_categories do |t|
      t.references :ad_id, null: false, foreign_key: true
      t.references :category_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
