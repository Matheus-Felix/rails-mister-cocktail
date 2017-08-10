class Dose < ApplicationRecord
  validates :cocktail, uniqueness: { scope: :ingredient }
  belongs_to :ingredient
  belongs_to :cocktail, dependent: :destroy
end
