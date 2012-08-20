require "minitest_helper"
include Mongoid::Matchers

describe Grain do
  it "has a name" do
    grain = FactoryGirl.build(:grain)
    grain.must have_field(:name)
  end
end