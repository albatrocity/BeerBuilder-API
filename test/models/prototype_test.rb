require "minitest_helper"
include Mongoid::Matchers

describe Prototype do
  it "has hops" do
    prototype = FactoryGirl.create(:prototype_with_ingredients)
    prototype.must have_many(:ingredient_hops)
    prototype.must have_many(:ingredient_yeasts)
    prototype.must have_many(:ingredient_grains)
  end
end