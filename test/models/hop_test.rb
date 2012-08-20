require "minitest_helper"
include Mongoid::Matchers

describe Hop do
  it "has a name" do
    hop = FactoryGirl.build(:hop)
    hop.must have_field(:name)
    hop.wont have_field(:poops)
  end
end