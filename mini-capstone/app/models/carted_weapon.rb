class CartedWeapon < ApplicationRecord
  belongs_to :weapon
  belongs_to :order, optional: true
  belongs_to :user

  def subtotal
    weapon.price * quantity
  end

end
