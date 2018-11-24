class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.integer :table_number

      t.timestamps
    end
    add_reference :tables, :waiter, index: true
  end
end
