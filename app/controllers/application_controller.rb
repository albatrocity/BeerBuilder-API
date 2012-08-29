class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :ensure_updated_data

  def ensure_updated_data
    @last_updated = params[:last_updated]
    @model        = params[:controller].classify.demodulize.constantize
    puts @model
    if @last_updated
      unless @model.where(:updated_at => {'$gt' => @last_updated}).exists?
        respond_to do |format|
          format.json { render :json => @last_updated, :status => :no_content }
        end
      end
    end
  end
end
