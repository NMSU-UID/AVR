class CreateTablesItemsJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :tables_items_joins do |t|
      t.references :table
      t.references :menuitem
      t.timestamps
    end
  end
end
