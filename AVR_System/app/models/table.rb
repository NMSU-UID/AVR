class Table < ApplicationRecord
  belongs_to :waiter

  # scope :by_waiter, -> { Table.all.where("waiter.id = #{waiter.id} )}
end
