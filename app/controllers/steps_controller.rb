class StepsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.build
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.build(step_params)
    redirect_to recipe_path(@recipe) if @step.save
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.find(params[:id])

    redirect_to recipe_path(@recipe) if @step.update(step_params)
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.find(params[:id])

    redirect_to recipe_path(@recipe) if @step.destroy
  end

  private

  def step_params
    params.require(:step).permit(:description)
  end
end
