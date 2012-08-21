class BeerCategoriesController < ApplicationController
  # GET /beer_categories
  # GET /beer_categories.json
  def index
    @beer_categories = BeerCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beer_categories }
    end
  end

  # GET /beer_categories/1
  # GET /beer_categories/1.json
  def show
    @beer_category = BeerCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beer_category }
    end
  end

  # GET /beer_categories/new
  # GET /beer_categories/new.json
  def new
    @beer_category = BeerCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beer_category }
    end
  end

  # GET /beer_categories/1/edit
  def edit
    @beer_category = BeerCategory.find(params[:id])
  end

  # POST /beer_categories
  # POST /beer_categories.json
  def create
    @beer_category = BeerCategory.new(params[:beer_category])

    respond_to do |format|
      if @beer_category.save
        format.html { redirect_to @beer_category, notice: 'Beer category was successfully created.' }
        format.json { render json: @beer_category, status: :created, location: @beer_category }
      else
        format.html { render action: "new" }
        format.json { render json: @beer_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beer_categories/1
  # PUT /beer_categories/1.json
  def update
    @beer_category = BeerCategory.find(params[:id])

    respond_to do |format|
      if @beer_category.update_attributes(params[:beer_category])
        format.html { redirect_to @beer_category, notice: 'Beer category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @beer_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_categories/1
  # DELETE /beer_categories/1.json
  def destroy
    @beer_category = BeerCategory.find(params[:id])
    @beer_category.destroy

    respond_to do |format|
      format.html { redirect_to beer_categories_url }
      format.json { head :ok }
    end
  end
end
