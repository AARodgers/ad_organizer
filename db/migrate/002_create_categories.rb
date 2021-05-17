class CreateCategories < ActiveRecord::Migration
    def change
      create_table :categories do |t|
        t.string :name
        t.integer :#foreign key for ad?

        t.timestamps null: false
      end
    end
  end
