class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :carted_weapons
  has_many :weapons, through: :carted_weapons
  has_many :users, through: :carted_weapons


end
