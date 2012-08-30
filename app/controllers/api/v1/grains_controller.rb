module Api
  module V1
    class GrainsController < ApplicationController
      before_filter :ensure_updated_data
      respond_to :json
      def index
        respond_with Grain.all
      end
      
      def show
        respond_with Grain.find(params[:id])
      end
    end
  end
end