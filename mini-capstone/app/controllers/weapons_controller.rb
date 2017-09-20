class WeaponsController < ApplicationController

  def index

    @weapons = Weapon.all
    sort_attribute = params[:sort]
    order_attribute = params[:order]
    search_attribute = params[:search]
    category_attribute = params[:category]
    @random_item_num = Random.rand(1..Weapon.count)

    if category_attribute
      @weapons = Category.find_by(name: params[:category]).weapons
    end

    if sort_attribute && order_attribute
      @weapons = @weapons.order(sort_attribute => order_attribute)
    end

    if search_attribute
      @weapons = @weapons.order(sort_attribute)
    end

    if search_attribute
      search_attribute.sub!('+', ' ')
      @weapon = (Weapon.find_by(name: search_attribute))
      redirect_to "/weapons/#{@weapon.id}"
    end

    discount_items = params[:discount]
    if discount_items == "discount"
      @weapons = Weapon.where("price < ?", 200)
    end
  end

  def show

    @weapon = Weapon.find(params[:id])

  end

  def create
    weapon = Weapon.create(
                        name: params[:name],
                        price: params[:price],
                        description: params[:description],
                        stock: params[:stock],
                        supplier_id: params[:supplier_id]
                      )
    flash[:success] = "Listing Successfully Created"
    redirect_to "/weapons/#{ weapon.id }"
  end

  def show
    @weapon = Weapon.find(params[:id])
  end

  def edit
    @weapon = Weapon.find(params[:id])
  end

  def update
    weapon = Weapon.find(params[:id])
    weapon.update_attributes(
                                    name: params[:name],
                                    price: params[:price],
                                    description: params[:description],
                                    stock: params[:stock].to_bool
                                    )
    flash[:success] = "Listing Successfully Updated"
    redirect_to "/weapons/#{ weapon.id }"
  end

  def destroy
    weapon = Weapon.find(params[:id])
    weapon.destroy
    flash[:danger] = "Listing Successfully Deleted"
    redirect_to("/")
  end

  def random
    weapon_id = Weapon.all.sample.id
    redirect_to "/weapons/#{weapon_id}"
  end

  def new
    @suppliers = Supplier.all
  end

end
