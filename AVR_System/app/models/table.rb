class Table < ApplicationRecord
  belongs_to :waiter
  has_many :menuitems

  # scope :by_waiter, -> { Table.all.where("waiter.id = #{waiter.id} )}
end
