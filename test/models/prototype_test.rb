require "minitest_helper"
include Mongoid::Matchers

describe Prototype do
  it "has hops" do
    prototype = Fabricate(:prototype)
    prototype.must have_many(:ingredient_hops)
    prototype.must have_many(:ingredient_yeasts)
    prototype.must have_many(:ingredient_grains)
  end
end