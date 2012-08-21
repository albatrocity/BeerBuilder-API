require "minitest_helper"
include Mongoid::Matchers

describe "Beer Category integration" do
  it "shows category's name" do
    category = FactoryGirl.create(:beer_category)
    visit beer_category_path(category)
    page.text.must_include "#{category.name}"
  end
end