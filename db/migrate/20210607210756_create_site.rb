class CreateSite < ActiveRecord::Migration[6.1]
  def change
    create_table :sites do |t|
      t.references :owner, null: false, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
