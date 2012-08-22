class Grain
  include Mongoid::Document
  field :name, type: String
  field :lovibond_lo, type: BigDecimal
  field :lovibond_hi, type: BigDecimal
  field :gu_lo, type: BigDecimal
  field :gu_hi, type: BigDecimal
  field :characteristics, type: String
  field :description, type: String
  field :is_extract, type: Boolean

  validates :name, presence:true
  has_and_belongs_to_many :prototypes, :inverse_of => :grain
end
