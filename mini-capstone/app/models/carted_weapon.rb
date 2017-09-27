class CartedWeapon < ApplicationRecord
  belongs_to :weapon
  belongs_to :order, optional: true
  belongs_to :user
end
