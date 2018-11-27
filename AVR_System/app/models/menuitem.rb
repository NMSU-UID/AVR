class Menuitem < ApplicationRecord
  belongs_to :category
  belongs_to :table
end
