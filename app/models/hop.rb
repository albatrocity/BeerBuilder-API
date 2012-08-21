class Hop
  include Mongoid::Document
  field :name, type: String
  field :aa_lo, type: BigDecimal
  field :aa_hi, type: BigDecimal
  field :characteristics, type: String
  field :description, type: String

  has_and_belongs_to_many :prototypes, :inverse_of => :hop
end
