class Order < ApplicationRecord
  belongs_to :weapon, optional: true
  belongs_to :user, optional: true


end
