class RealtiesController < ApplicationController
  # GET /realties
  # GET /realties.json
  def index
    @realties = Realty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @realties }
    end
  end

  # GET /realties/1
  # GET /realties/1.json
  def show
    @realty = Realty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @realty }
    end
  end

  # GET /realties/new
  # GET /realties/new.json
  def new
    @realty = Realty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @realty }
    end
  end

  # GET /realties/1/edit
  def edit
    @realty = Realty.find(params[:id])
  end

  # POST /realties
  # POST /realties.json
  def create
    @realty = Realty.new(params[:realty])

    respond_to do |format|
      if @realty.save
        format.html { redirect_to @realty, notice: 'Realty was successfully created.' }
        format.json { render json: @realty, status: :created, location: @realty }
      else
        format.html { render action: "new" }
        format.json { render json: @realty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /realties/1
  # PUT /realties/1.json
  def update
    @realty = Realty.find(params[:id])

    respond_to do |format|
      if @realty.update_attributes(params[:realty])
        format.html { redirect_to @realty, notice: 'Realty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @realty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realties/1
  # DELETE /realties/1.json
  def destroy
    @realty = Realty.find(params[:id])
    @realty.destroy

    respond_to do |format|
      format.html { redirect_to realties_url }
      format.json { head :no_content }
    end
  end
end
