class Hop
  include Mongoid::Document
  include Mongoid::Timestamps::Updated
  field :name, type: String
  field :aa_lo, type: BigDecimal
  field :aa_hi, type: BigDecimal
  field :characteristics, type: Array
  field :description, type: String

  validates :name, presence:true

  has_many :tags
end
