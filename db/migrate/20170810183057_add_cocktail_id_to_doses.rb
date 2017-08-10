class AddCocktailIdToDoses < ActiveRecord::Migration[5.0]
  def change
    add_reference :doses, :cocktail, index: true, foreign_key: true
  end
end
