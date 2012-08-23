class IngredientHopsController < ApplicationController
  # GET /ingredient_hops
  # GET /ingredient_hops.json
  def index
    @ingredient_hops = IngredientHop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ingredient_hops }
    end
  end

  # GET /ingredient_hops/1
  # GET /ingredient_hops/1.json
  def show
    @ingredient_hop = IngredientHop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ingredient_hop }
    end
  end

  # GET /ingredient_hops/new
  # GET /ingredient_hops/new.json
  def new
    @ingredient_hop = IngredientHop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ingredient_hop }
    end
  end

  # GET /ingredient_hops/1/edit
  def edit
    @ingredient_hop = IngredientHop.find(params[:id])
  end

  # POST /ingredient_hops
  # POST /ingredient_hops.json
  def create
    @ingredient_hop = IngredientHop.new(params[:ingredient_hop])

    respond_to do |format|
      if @ingredient_hop.save
        format.html { redirect_to @ingredient_hop, notice: 'Ingredient hop was successfully created.' }
        format.json { render json: @ingredient_hop, status: :created, location: @ingredient_hop }
      else
        format.html { render action: "new" }
        format.json { render json: @ingredient_hop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ingredient_hops/1
  # PUT /ingredient_hops/1.json
  def update
    @ingredient_hop = IngredientHop.find(params[:id])

    respond_to do |format|
      if @ingredient_hop.update_attributes(params[:ingredient_hop])
        format.html { redirect_to @ingredient_hop, notice: 'Ingredient hop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ingredient_hop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_hops/1
  # DELETE /ingredient_hops/1.json
  def destroy
    @ingredient_hop = IngredientHop.find(params[:id])
    @ingredient_hop.destroy

    respond_to do |format|
      format.html { redirect_to ingredient_hops_url }
      format.json { head :no_content }
    end
  end
end
