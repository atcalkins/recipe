class StepsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.build
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.build(step_params)
    if @step.save
      redirect_to recipe_path(@recipe)
    end
  end

  private

  def step_params
    params.require(:step).permit(:description)
  end

end
