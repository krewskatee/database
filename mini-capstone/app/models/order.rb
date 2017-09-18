class Order < ApplicationRecord
  belongs_to :weapon, optional: true
  belongs_to :user, optional: true

  def tax(price)
    price * 1.10
  end

end
