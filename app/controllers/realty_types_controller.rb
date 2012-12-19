class RealtyTypesController < ApplicationController
  # GET /realty_types
  # GET /realty_types.json
  def index
    @realty_types = RealtyType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @realty_types }
    end
  end

  # GET /realty_types/1
  # GET /realty_types/1.json
  def show
    @realty_type = RealtyType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @realty_type }
    end
  end

  # GET /realty_types/new
  # GET /realty_types/new.json
  def new
    @realty_type = RealtyType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @realty_type }
    end
  end

  # GET /realty_types/1/edit
  def edit
    @realty_type = RealtyType.find(params[:id])
  end

  # POST /realty_types
  # POST /realty_types.json
  def create
    @realty_type = RealtyType.new(params[:realty_type])

    respond_to do |format|
      if @realty_type.save
        format.html { redirect_to @realty_type, notice: 'Realty type was successfully created.' }
        format.json { render json: @realty_type, status: :created, location: @realty_type }
      else
        format.html { render action: "new" }
        format.json { render json: @realty_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /realty_types/1
  # PUT /realty_types/1.json
  def update
    @realty_type = RealtyType.find(params[:id])

    respond_to do |format|
      if @realty_type.update_attributes(params[:realty_type])
        format.html { redirect_to @realty_type, notice: 'Realty type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @realty_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realty_types/1
  # DELETE /realty_types/1.json
  def destroy
    @realty_type = RealtyType.find(params[:id])
    @realty_type.destroy

    respond_to do |format|
      format.html { redirect_to realty_types_url }
      format.json { head :no_content }
    end
  end
end
