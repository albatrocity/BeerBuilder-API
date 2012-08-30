module Api
  module V1
    class YeastsController < ApplicationController
      before_filter :ensure_updated_data
      respond_to :json
      def index
        respond_with Yeast.all
      end
      
      def show
        respond_with Yeast.find(params[:id])
      end
    end
  end
end