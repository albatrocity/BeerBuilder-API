require "minitest_helper"
include Mongoid::Matchers

describe Hop do
  it "has a name" do
    hop = Fabricate(:hop)
    hop.must have_field(:name)
    hop.wont have_field(:poops)
  end
end