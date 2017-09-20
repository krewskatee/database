class Recipe < ApplicationRecord
  belongs_to :user
  has_many :category_recipes
  has_many :categories, through: :category_recipes

  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def chef
    user.name
  end

end
