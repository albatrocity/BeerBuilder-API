require "minitest_helper"
include Mongoid::Matchers

describe Prototype do
  it "has hops" do
    prototype = FactoryGirl.create(:prototype_with_ingredients)
    prototype.must have_and_belong_to_many(:hops)
    prototype.must have_and_belong_to_many(:yeasts)
    prototype.must have_and_belong_to_many(:grains)
    prototype.must belong_to(:beer_style)
    prototype.must have_field(:hop_ids, :grain_ids, :yeast_ids, :beer_style_id)
  end
end