class YeastIngredient
  include Mongoid::Document

  embedded_in :prototype
  has_one :yeast

end