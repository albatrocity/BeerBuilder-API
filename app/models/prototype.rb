class Prototype
  include Mongoid::Document
  field :id, type: String
  has_and_belongs_to_many :hops, :inverse_of => :prototype
  has_and_belongs_to_many :grains, :inverse_of => :prototype
  has_and_belongs_to_many :yeasts, :inverse_of => :prototype

  belongs_to :beer_style
  
end
