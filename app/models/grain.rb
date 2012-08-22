class Grain
  include Mongoid::Document
  field :name, type: String
  field :lovibond_lo, type: BigDecimal
  field :lovibond_hi, type: BigDecimal
  field :gu_lo, type: BigDecimal
  field :gu_hi, type: BigDecimal
  field :characteristics, type: Array
  field :description, type: String
  field :is_extract, type: Boolean

  validates :name, presence:true
end
