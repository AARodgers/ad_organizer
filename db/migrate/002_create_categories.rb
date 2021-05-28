class CreateCategories < ActiveRecord::Migration
    def change
      create_table :categories do |t|
        t.string :name
        t. :#foreign key for ad?

        t.timestamps null: false
      end
    end
  end
