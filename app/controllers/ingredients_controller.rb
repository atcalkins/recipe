class IngredientsController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.ingredients.create(ingredient_params)
  end  
end
