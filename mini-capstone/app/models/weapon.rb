class Weapon < ApplicationRecord

  def discounted?
    price < 50
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def sale_message_styling
    "red" if sale_message == "Discount Item"
  end

end
