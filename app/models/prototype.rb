class Prototype
  include Mongoid::Document
  include Mongoid::Timestamps::Updated
  field :id, type: String
  embeds_many :ingredient_grains
  embeds_many :ingredient_hops
  embeds_many :ingredient_yeasts

  belongs_to :beer_style, :inverse_of => :prototype
  belongs_to :beer_category, :inverse_of => :prototype
  accepts_nested_attributes_for :ingredient_grains
  accepts_nested_attributes_for :ingredient_hops
  accepts_nested_attributes_for :ingredient_yeasts
  
end
