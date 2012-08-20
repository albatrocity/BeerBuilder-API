class Grain
  include Mongoid::Document
  field :name, type: String
  field :lovibond_lo, type: BigDecimal
  field :lovibond_hi, type: BigDecimal
  field :gu_lo, type: BigDecimal
  field :gu_hi, type: BigDecimal
  field :characteristics, type: String
  field :description, type: String

  validates :name, uniqueness:true, presence:true
end
