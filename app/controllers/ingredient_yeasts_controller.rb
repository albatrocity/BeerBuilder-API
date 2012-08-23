class IngredientYeastsController < ApplicationController
  # GET /ingredient_yeasts
  # GET /ingredient_yeasts.json
  def index
    @ingredient_yeasts = IngredientYeast.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ingredient_yeasts }
    end
  end

  # GET /ingredient_yeasts/1
  # GET /ingredient_yeasts/1.json
  def show
    @ingredient_yeast = IngredientYeast.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ingredient_yeast }
    end
  end

  # GET /ingredient_yeasts/new
  # GET /ingredient_yeasts/new.json
  def new
    @ingredient_yeast = IngredientYeast.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ingredient_yeast }
    end
  end

  # GET /ingredient_yeasts/1/edit
  def edit
    @ingredient_yeast = IngredientYeast.find(params[:id])
  end

  # POST /ingredient_yeasts
  # POST /ingredient_yeasts.json
  def create
    @ingredient_yeast = IngredientYeast.new(params[:ingredient_yeast])

    respond_to do |format|
      if @ingredient_yeast.save
        format.html { redirect_to @ingredient_yeast, notice: 'Ingredient yeast was successfully created.' }
        format.json { render json: @ingredient_yeast, status: :created, location: @ingredient_yeast }
      else
        format.html { render action: "new" }
        format.json { render json: @ingredient_yeast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ingredient_yeasts/1
  # PUT /ingredient_yeasts/1.json
  def update
    @ingredient_yeast = IngredientYeast.find(params[:id])

    respond_to do |format|
      if @ingredient_yeast.update_attributes(params[:ingredient_yeast])
        format.html { redirect_to @ingredient_yeast, notice: 'Ingredient yeast was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ingredient_yeast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_yeasts/1
  # DELETE /ingredient_yeasts/1.json
  def destroy
    @ingredient_yeast = IngredientYeast.find(params[:id])
    @ingredient_yeast.destroy

    respond_to do |format|
      format.html { redirect_to ingredient_yeasts_url }
      format.json { head :no_content }
    end
  end
end
