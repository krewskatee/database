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
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
  end

end
