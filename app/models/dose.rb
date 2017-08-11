class Dose < ApplicationRecord
  validates :description, :cocktail, :ingredient, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
  belongs_to :ingredient
  belongs_to :cocktail, dependent: :destroy
end
