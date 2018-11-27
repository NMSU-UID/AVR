class AddItemsToTables < ActiveRecord::Migration[5.2]
  def change
    add_reference :tables, :menuitem, foreign_key: true
  end
end
