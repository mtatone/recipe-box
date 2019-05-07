class RecipesController < ApplicationController
  def index
  end

  def show
    find_recipe
  end

  def new
    @recipe = Recipe.new
  end

  def create
  end


  private 

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end
