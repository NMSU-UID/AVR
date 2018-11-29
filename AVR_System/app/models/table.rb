class Table < ApplicationRecord
  belongs_to :waiter
  has_many :tables_items_joins
  has_many :menuitems, through: :tables_items_joins

  # scope :by_waiter, -> { Table.all.where("waiter.id = #{waiter.id} )}
end
