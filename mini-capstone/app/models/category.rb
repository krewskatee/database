class Category < ApplicationRecord
  has_many :category_weapons
  has_many :weapons, through: :category_weapons
end
