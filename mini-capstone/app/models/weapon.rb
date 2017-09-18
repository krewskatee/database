class Weapon < ApplicationRecord

    has_many :orders
    has_many :images
    belongs_to :supplier

  def discounted?
    price < 50
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def default_image
    if images.count > 0
      images.first.image_url
    else
      "http://saveabandonedbabies.org/wp-content/uploads/2015/08/default.png"
    end
  end

end
