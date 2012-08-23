class IngredientYeast
  include Mongoid::Document

  belongs_to :yeast
  embedded_in :prototype
end
