class StepsController < ApplicationController
  
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.steps.create(step_params)
  end
end
