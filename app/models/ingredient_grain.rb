class IngredientGrain
  include Mongoid::Document
  field :weight, type: BigDecimal

  belongs_to :grain
  embedded_in :prototype
end
