class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktail = Cocktail.new(allowed_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def update

  end

  def destroy
     @cocktail = Cocktail.find(params[:id])
     @cocktail.destroy
     redirect_to cocktails_path
  end

  private

  def allowed_params
    params.require(:cocktail).permit(:name, :ingredient, :dose, :photo, :photo_cache)
  end
end
