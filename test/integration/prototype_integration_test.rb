require "minitest_helper"
include Mongoid::Matchers

describe "Prototypes integration" do
  it "shows prototype's name" do
    proto = FactoryGirl.create(:prototype_with_ingredients)
    visit prototype_path(proto)
    # page.text.must_include "#{proto.name}"
  end
end