class HopIngredient
  include Mongoid::Document
  field :weight, type: BigDecimal
  field :minutes, type: Integer

  embedded_in :prototype
  has_one :hop

end