class ShoppingsController < ApplicationController
  # GET /shoppings
  # GET /shoppings.json
  def index
    @shoppings = Shopping.find(:all, :order => "id desc", :limit => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shoppings }
    end
  end

  # GET /shoppings/1
  # GET /shoppings/1.json
  def show
    @shopping = Shopping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shopping }
    end
  end

  # GET /shoppings/new
  # GET /shoppings/new.json
  def new
    @shopping = Shopping.new
    @shopping.products.build
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shopping }
    end
  end

  # GET /shoppings/1/edit
  def edit
    @shopping = Shopping.find(params[:id])
  end

  # POST /shoppings
  # POST /shoppings.json
  def create

    @shopping = Shopping.new(params[:shopping])

    respond_to do |format|
      if @shopping.save
        format.html { redirect_to shoppings_url, notice: 'Shopping was successfully created.' }
        format.json { render json: @shopping, status: :created, location: @shopping }
      else
        format.html { render action: "new" }
        format.json { render json: @shopping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shoppings/1
  # PUT /shoppings/1.json
  def update
    @shopping = Shopping.find(params[:id])

    respond_to do |format|
      if @shopping.update_attributes(params[:shopping])
        format.html { redirect_to shoppings_url, notice: 'Shopping was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shopping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoppings/1
  # DELETE /shoppings/1.json
  def destroy
    @shopping = Shopping.find(params[:id])
    @shopping.destroy

    respond_to do |format|
      format.html { redirect_to shoppings_url }
      format.json { head :no_content }
    end
  end
end
