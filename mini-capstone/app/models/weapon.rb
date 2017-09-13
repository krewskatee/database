class Weapon < ApplicationRecord

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

end
