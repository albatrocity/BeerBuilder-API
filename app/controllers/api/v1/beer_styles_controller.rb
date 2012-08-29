module Api
  module V1
    class BeerStylesController < ApplicationController
      respond_to :json
      def index
        respond_with BeerStyle.all
      end
      
      def show
        respond_with BeerStyle.find(params[:id])
      end
    end
  end
end