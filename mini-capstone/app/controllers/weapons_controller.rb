class WeaponsController < ApplicationController

  def weapons_action
    @weapons = Weapon.all
    render 'weapon_listings.html.erb'
  end

end
