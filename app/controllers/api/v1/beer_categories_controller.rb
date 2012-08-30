module Api
  module V1
    class BeerCategoriesController < ApplicationController
      before_filter :ensure_updated_data
      respond_to :json
      def index
        respond_with BeerCategory.all
      end
      
      def show
        respond_with BeerCategory.find(params[:id])
      end
    end
  end
end