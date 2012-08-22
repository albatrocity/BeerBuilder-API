class GrainIngredient
  include Mongoid::Document
  field :weight, type: BigDecimal

  embedded_in :prototype
  has_one :grain

end