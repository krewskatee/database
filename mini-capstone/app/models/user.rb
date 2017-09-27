class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :carted_weapons

  def current_cart
    carted_weapons.where(status: "carted")
  end

end
