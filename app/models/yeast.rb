class Yeast
  include Mongoid::Document
  include Mongoid::Timestamps::Updated
  field :name, type: String
  field :attenuation_lo, type: BigDecimal
  field :attenuation_hi, type: BigDecimal
  field :flocculation, type: BigDecimal
  field :temperature_lo, type: BigDecimal
  field :temperature_hi, type: BigDecimal
  field :alcohol_tolerance, type: BigDecimal

  validates :name, presence:true

  has_many :tags
end