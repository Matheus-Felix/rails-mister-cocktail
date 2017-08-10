class AddIngredientIdToDoses < ActiveRecord::Migration[5.0]
  def change
    add_reference :doses, :ingredient, index: true, foreign_key: true
  end
end
