module Api
  module V1
    class GrainsController < ApplicationController
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