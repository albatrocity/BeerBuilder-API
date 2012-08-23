class IngredientHop
  include Mongoid::Document
  field :weight, type: BigDecimal
  field :boil_time, type: Integer

  belongs_to :hop
  embedded_in :prototype
end
