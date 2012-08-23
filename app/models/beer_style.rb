class BeerStyle
  include Mongoid::Document
  field :name, type: String
  field :og_hi, type: BigDecimal
  field :og_lo, type: BigDecimal
  field :fg_lo, type: BigDecimal
  field :fg_hi, type: BigDecimal
  field :abv_lo, type: BigDecimal
  field :abv_hi, type: BigDecimal
  field :ibu_lo, type: BigDecimal
  field :ibu_hi, type: BigDecimal
  field :srm_lo, type: BigDecimal
  field :srm_hi, type: BigDecimal
  field :aroma, type: String
  field :appearance, type: String
  field :flavor, type: String
  field :mouthfeel, type: String
  field :overall_impression, type: String
  field :comments, type: String
  field :history, type: String

  belongs_to :beer_category
  has_many :prototypes
  accepts_nested_attributes_for :prototypes

  validates :name, presence:true
end
