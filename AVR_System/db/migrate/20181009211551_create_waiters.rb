class CreateWaiters < ActiveRecord::Migration[5.2]
  def change
    create_table :waiters do |t|
      t.string :first_name
      t.string :last_name
      t.integer :pin
      t.boolean :manager

      t.timestamps
    end
  end
end
