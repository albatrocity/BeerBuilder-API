class IngredientGrainsController < ApplicationController
  # GET /ingredient_grains
  # GET /ingredient_grains.json
  def index
    @ingredient_grains = IngredientGrain.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ingredient_grains }
    end
  end

  # GET /ingredient_grains/1
  # GET /ingredient_grains/1.json
  def show
    @ingredient_grain = IngredientGrain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ingredient_grain }
    end
  end

  # GET /ingredient_grains/new
  # GET /ingredient_grains/new.json
  def new
    @ingredient_grain = IngredientGrain.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ingredient_grain }
    end
  end

  # GET /ingredient_grains/1/edit
  def edit
    @ingredient_grain = IngredientGrain.find(params[:id])
  end

  # POST /ingredient_grains
  # POST /ingredient_grains.json
  def create
    @ingredient_grain = IngredientGrain.new(params[:ingredient_grain])

    respond_to do |format|
      if @ingredient_grain.save
        format.html { redirect_to @ingredient_grain, notice: 'Ingredient grain was successfully created.' }
        format.json { render json: @ingredient_grain, status: :created, location: @ingredient_grain }
      else
        format.html { render action: "new" }
        format.json { render json: @ingredient_grain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ingredient_grains/1
  # PUT /ingredient_grains/1.json
  def update
    @ingredient_grain = IngredientGrain.find(params[:id])

    respond_to do |format|
      if @ingredient_grain.update_attributes(params[:ingredient_grain])
        format.html { redirect_to @ingredient_grain, notice: 'Ingredient grain was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ingredient_grain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_grains/1
  # DELETE /ingredient_grains/1.json
  def destroy
    @ingredient_grain = IngredientGrain.find(params[:id])
    @ingredient_grain.destroy

    respond_to do |format|
      format.html { redirect_to ingredient_grains_url }
      format.json { head :no_content }
    end
  end
end
