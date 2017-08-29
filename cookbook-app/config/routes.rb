Rails.application.routes.draw do
  get '/recipes' => 'recipes#one_recipe_action'
end
