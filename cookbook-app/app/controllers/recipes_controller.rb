class RecipesController < ApplicationController

  def index
    if session[:count] == nil
      session[:count] = 0
    end
    session[:count] += 1
    @counter = session[:count]

    @recipes = Recipe.all
  end

  def new

  end

  def create
    recipe = Recipe.create(
                        title: params[:title],
                        user_id: current_user.id,
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
                            user_id: current_user.id,
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
