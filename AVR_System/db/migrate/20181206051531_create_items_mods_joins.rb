class CreateItemsModsJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :items_mods_joins do |t|
      t.references :menuitems, foreign_key: true
      t.references :mods, foreign_key: true

      t.timestamps
    end
  end
end
