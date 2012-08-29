class BeerCategory
  include Mongoid::Document
  include Mongoid::Timestamps::Updated
  field :name, type: String

  has_many :beer_styles, :inverse_of => :beer_category
end
