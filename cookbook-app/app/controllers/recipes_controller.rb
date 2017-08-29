class RecipesController < ApplicationController
  def one_recipe_action
    @recipes = Recipe.all
    render 'all_recipe_page.html.erb'
  end
end
