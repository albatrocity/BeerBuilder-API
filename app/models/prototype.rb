class Prototype
  include Mongoid::Document
  field :id, type: String

  belongs_to :beer_style
  
  embeds_many :grain_ingredients
  accepts_nested_attributes_for :grain_ingredients
  embeds_many :hop_ingredients
  accepts_nested_attributes_for :hop_ingredients
  embeds_many :yeast_ingredients
  accepts_nested_attributes_for :yeast_ingredients
  
end
