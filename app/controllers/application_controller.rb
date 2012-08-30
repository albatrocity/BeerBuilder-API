class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :reload_rails_admin, if: :rails_admin_path?

  def ensure_updated_data
    @last_updated = params[:last_updated]
    @model        = params[:controller].classify.demodulize.constantize
    if @last_updated
      unless @model.where(:updated_at => {'$gt' => @last_updated}).exists?
        respond_to do |format|
          format.json { render :json => @last_updated, :status => :no_content }
        end
      end
    end
  end

  private

  def reload_rails_admin
    models = %W(User UserProfile)
    models.each do |m|
      RailsAdmin::Config.reset_model(m)
    end
    RailsAdmin::Config::Actions.reset

    load("#{Rails.root}/config/initializers/rails_admin.rb")
  end

  def rails_admin_path?
    controller_path =~ /rails_admin/ && Rails.env == "development"
  end

end
