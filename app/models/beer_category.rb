class BeerCategory
  include Mongoid::Document
  field :name, type: String

  has_many :beer_styles, :inverse_of => :beer_category
end
