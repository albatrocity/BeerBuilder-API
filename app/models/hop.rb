class Hop
  include Mongoid::Document
  field :name, type: String
  field :aa_lo, type: BigDecimal
  field :aa_hi, type: BigDecimal
  field :characteristics, type: Array
  field :description, type: String
end
