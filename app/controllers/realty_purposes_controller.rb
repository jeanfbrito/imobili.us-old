class RealtyPurposesController < ApplicationController
  # GET /realty_purposes
  # GET /realty_purposes.json
  def index
    @realty_purposes = RealtyPurpose.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @realty_purposes }
    end
  end

  # GET /realty_purposes/1
  # GET /realty_purposes/1.json
  def show
    @realty_purpose = RealtyPurpose.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @realty_purpose }
    end
  end

  # GET /realty_purposes/new
  # GET /realty_purposes/new.json
  def new
    @realty_purpose = RealtyPurpose.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @realty_purpose }
    end
  end

  # GET /realty_purposes/1/edit
  def edit
    @realty_purpose = RealtyPurpose.find(params[:id])
  end

  # POST /realty_purposes
  # POST /realty_purposes.json
  def create
    @realty_purpose = RealtyPurpose.new(params[:realty_purpose])

    respond_to do |format|
      if @realty_purpose.save
        format.html { redirect_to @realty_purpose, notice: 'Realty purpose was successfully created.' }
        format.json { render json: @realty_purpose, status: :created, location: @realty_purpose }
      else
        format.html { render action: "new" }
        format.json { render json: @realty_purpose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /realty_purposes/1
  # PUT /realty_purposes/1.json
  def update
    @realty_purpose = RealtyPurpose.find(params[:id])

    respond_to do |format|
      if @realty_purpose.update_attributes(params[:realty_purpose])
        format.html { redirect_to @realty_purpose, notice: 'Realty purpose was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @realty_purpose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realty_purposes/1
  # DELETE /realty_purposes/1.json
  def destroy
    @realty_purpose = RealtyPurpose.find(params[:id])
    @realty_purpose.destroy

    respond_to do |format|
      format.html { redirect_to realty_purposes_url }
      format.json { head :no_content }
    end
  end
end
