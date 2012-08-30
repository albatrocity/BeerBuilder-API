# RailsAdmin config file. Generated on August 21, 2012 17:16
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  # If your default_local is different from :en, uncomment the following 2 lines and set your default locale here:
  # require 'i18n'
  # I18n.default_locale = :de

  config.current_user_method { current_admin } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, Admin

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, Admin

  # Set the admin name here (optional second array element will appear in a beautiful RailsAdmin red ©)
  config.main_app_name = ['Beer Builder', 'Admin']
  # or for a dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }


  #  ==> Global show view settings
  # Display empty fields in show views
  # config.compact_show_view = false

  #  ==> Global list view settings
  # Number of default rows per-page:
  # config.default_items_per_page = 20

  #  ==> Included models
  # Add all excluded models here:
  # config.excluded_models = [BeerCategory, BeerStyle, Grain, Hop, Prototype, Yeast]

  # Add models here if you want to go 'whitelist mode':
  # config.included_models = [BeerCategory, BeerStyle, Grain, Hop, Prototype, Yeast]

  # Application wide tried label methods for models' instances
  # config.label_methods << :description # Default is [:name, :title]

  #  ==> Global models configuration
  # config.models do
  #   # Configuration here will affect all included models in all scopes, handle with care!
  #
  #   list do
  #     # Configuration here will affect all included models in list sections (same for show, export, edit, update, create)
  #
  #     fields_of_type :date do
  #       # Configuration here will affect all date fields, in the list section, for all included models. See README for a comprehensive type list.
  #     end
  #   end
  # end
  #
  #  ==> Model specific configuration
  # Keep in mind that *all* configuration blocks are optional.
  # RailsAdmin will try his best to provide the best defaults for each section, for each field.
  # Try to override as few things as possible, in the most generic way. Try to avoid setting labels for models and attributes, use ActiveRecord I18n API instead.
  # Less code is better code!
  # config.model MyModel do
  #   # Cross-section field configuration
  #   object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #   label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #   label_plural 'My models'      # Same, plural
  #   weight -1                     # Navigation priority. Bigger is higher.
  #   parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #   navigation_label              # Sets dropdown entry's name in navigation. Only for parents!
  #   # Section specific configuration:
  #   list do
  #     filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #     items_per_page 100    # Override default_items_per_page
  #     sort_by :id           # Sort column (default is primary key)
  #     sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     # Here goes the fields configuration for the list view
  #   end
  # end

  # Your model's configuration, to help you get started:

  # All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible. (visible(true))

  # config.model BeerCategory do
  #   # Found associations:
  #     configure :prototypes, :has_and_belongs_to_many_association 
  #     configure :beer_styles, :has_many_association   #   # Found columns:
  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :name, :string 
  #     configure :prototype_ids, :serialized         # Hidden   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  config.model BeerStyle do
    # Found associations:
      configure :beer_category, :belongs_to_association 
      configure :prototypes, :has_many_association   #   # Found columns:
      configure :_type, :text         # Hidden 
      configure :_id, :bson_object_id 
      configure :name, :string 
      configure :og_hi, :decimal 
      configure :og_lo, :decimal 
      configure :fg_lo, :decimal 
      configure :fg_hi, :decimal 
      configure :abv_lo, :decimal 
      configure :abv_hi, :decimal 
      configure :ibu_lo, :decimal 
      configure :ibu_hi, :decimal 
      configure :srm_lo, :decimal 
      configure :srm_hi, :decimal 
      configure :aroma, :text 
      configure :appearance, :text 
      configure :flavor, :text 
      configure :mouthfeel, :text 
      configure :overall_impression, :text 
      configure :comments, :text 
      configure :history, :text 
      configure :beer_category_id, :bson_object_id         # Hidden   #   # Sections:
    list do; end
    export do; end
    show do; end
    edit do; end
    create do; end
    update do; end
  end
  # config.model Grain do
  #   # Found associations:
  #     configure :prototypes, :has_and_belongs_to_many_association   #   # Found columns:
  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :name, :string 
  #     configure :lovibond_lo, :decimal 
  #     configure :lovibond_hi, :decimal 
  #     configure :gu_lo, :decimal 
  #     configure :gu_hi, :decimal 
  #     configure :characteristics, :text 
  #     configure :description, :text 
  #     configure :prototype_ids, :serialized         # Hidden   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Hop do
  #   # Found associations:
  #     configure :prototypes, :has_and_belongs_to_many_association   #   # Found columns:
  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :name, :string 
  #     configure :aa_lo, :decimal 
  #     configure :aa_hi, :decimal 
  #     configure :characteristics, :text 
  #     configure :description, :text 
  #     configure :prototype_ids, :serialized         # Hidden   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  config.model Prototype do
    # Found associations:
      # configure :hops, :has_and_belongs_to_many_association 
      # configure :grains, :has_and_belongs_to_many_association 
      # configure :yeasts, :has_and_belongs_to_many_association 
      # configure :beer_style, :belongs_to_association   #   # Found columns:
      # configure :_type, :text         # Hidden 
      # configure :_id, :bson_object_id 
      # configure :id, :text 
      # configure :hop_ids, :serialized         # Hidden 
      # configure :grain_ids, :serialized         # Hidden 
      # configure :yeast_ids, :serialized         # Hidden 
      # configure :beer_style_id, :bson_object_id         # Hidden   #   # Sections:
    list do; end
    export do; end
    show do; end
    edit do
      field :beer_category do
        read_only true
      end
      field :beer_style
      field :ingredient_grains
      field :ingredient_hops
      field :ingredient_yeasts
    end
    create do; end
    update do; end
  end
  # config.model Yeast do
  #   # Found associations:
  #     configure :prototypes, :has_and_belongs_to_many_association   #   # Found columns:
  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :name, :string 
  #     configure :attenuation_lo, :decimal 
  #     configure :attenuation_hi, :decimal 
  #     configure :flocculation, :decimal 
  #     configure :temperature_lo, :decimal 
  #     configure :temperature_hi, :decimal 
  #     configure :alcohol_tolerance, :decimal 
  #     configure :prototype_ids, :serialized         # Hidden   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
end
