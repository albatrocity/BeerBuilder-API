require "minitest_helper"
include Mongoid::Matchers

describe Yeast do
  it "has a name" do
    yeast = FactoryGirl.build(:yeast)
    yeast.must have_field(:name)
    yeast.wont have_field(:poops)
  end
end