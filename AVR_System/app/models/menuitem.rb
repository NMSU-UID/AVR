class Menuitem < ApplicationRecord
  belongs_to :category
  has_many :tables_items_joins
  has_many :tables, through: :tables_items_joins
end
