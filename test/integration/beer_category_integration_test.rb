require "minitest_helper"
include Mongoid::Matchers


describe BeerCategoriesController do
  before do
    get :index
  end
  
end