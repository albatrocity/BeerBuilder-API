require "minitest_helper"
include Mongoid::Matchers

describe Grain do
  it "includes name in to_param" do
    grain = FactoryGirl.build(:grain)
    grain.name.must_equal "#{grain.name}"
  end
end