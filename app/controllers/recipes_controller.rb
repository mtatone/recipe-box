class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all.order('created_at DESC')
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    binding.pry
    if @recipe.save
      redirect_to @recipe, notice: 'Recipe was successfully created!'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @recipe.attach(params[:images])
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: 'Recipe was successfully updated!'
    else
      render 'edit', notice: @recipe.errors.message.to_s
    end
  end

  def delete
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
    params.require(:recipe).permit(:title, :description, :image)
  end
end
