class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new

  end

  def create
    recipe = Recipe.create(
                        title: params[:title],
                        chef: params[:chef],
                        ingredients: params[:ingredients],
                        directions: params[:directions]
                      )
    flash[:success] = "Recipe Successfully Created"
    redirect_to "/recipes/#{ recipe.id }"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update_attributes(
                            title: params[:title],
                            chef: params[:chef],
                            ingredients: params[:ingredients],
                            directions: params[:directions]
                            )
    flash[:success] = "Recipe Successfully Updated"
    redirect_to "/recipes/#{ recipe.id }"
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    flash[:danger] = "Recipe Successfully Created"
    redirect_to "/"
  end

end
