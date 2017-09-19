class Weapon < ApplicationRecord

    has_many :orders
    has_many :images
    belongs_to :supplier

  def discounted?
    price < 50
  end

  def tax
    price * 0.10
  end

  def total
    price + tax
  end

  def subtotal_with_quantity(quantity)
    price * quantity
  end

  def tax_with_quantity(quantity)
    price * 0.10 * quantity
  end

  def total_with_quantity(quantity)
    price + tax * quantity
  end



  def default_image
    if images.count > 0
      images.first.image_url
    else
      "http://saveabandonedbabies.org/wp-content/uploads/2015/08/default.png"
    end
  end

end
