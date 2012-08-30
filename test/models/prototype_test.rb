require "minitest_helper"
include Mongoid::Matchers

describe Prototype do
  it "belongs to category of style" do
    prototype = Fabricate(:prototype)
    prototype.beer_style.must_be_instance_of BeerStyle
    prototype.beer_category.must_equal prototype.beer_style.beer_category
    # prototype.must have_many(:ingredient_hops)
    # prototype.must have_many(:ingredient_yeasts)
    # prototype.must have_many(:ingredient_grains)
  end
end