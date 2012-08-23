require "minitest_helper"
include Mongoid::Matchers

describe Grain do
  it "has a name" do
    grain = Fabricate(:grain)
    grain.must have_field(:name)
  end
end