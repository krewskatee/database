class RecipesController < ApplicationController
  def one_recipe_action
    @recipes = Recipe.all
    render 'one_recipe_page.html.erb'
  end
end
