class CreateOwners < ActiveRecord::Migration[4.2]
    def change
      create_table :ownerss do |t|
        t.string :name

        t.timestamps null: false
      end
    end
  end
