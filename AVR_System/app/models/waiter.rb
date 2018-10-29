class Waiter < ApplicationRecord
  has_many :tables

  def first_last_name
    "#{first_name} #{last_name}"
  end
end
