class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    # if @recipe.save
    #   redirect_to @recipe, notice: 'Recipe was successfully created!'
    # else
    #   render 'new'
    # end
  end

  def destroy
    @recipe.destroy
    redirect_to root_path, notice: 'recipe successfully deleted!'
  end


  private 

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end
end
