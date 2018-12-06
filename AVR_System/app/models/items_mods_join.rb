class ItemsModsJoin < ApplicationRecord
  belongs_to :menuitems
  belongs_to :mods
end
