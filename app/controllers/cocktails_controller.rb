class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktails = Cocktail.new
  end

  def show
  end

  def create
  end

  def update
  end

  def delete
  end
end
