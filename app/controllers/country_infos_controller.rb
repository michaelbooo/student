class CountryInfosController < ApplicationController
  # GET /country_infos
  # GET /country_infos.json
  def index
    @country_infos = CountryInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @country_infos }
    end
  end

  # GET /country_infos/1
  # GET /country_infos/1.json
  def show
    @country_info = CountryInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @country_info }
    end
  end

  # GET /country_infos/new
  # GET /country_infos/new.json
  def new
    @country_info = CountryInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @country_info }
    end
  end

  # GET /country_infos/1/edit
  def edit
    @country_info = CountryInfo.find(params[:id])
  end

  # POST /country_infos
  # POST /country_infos.json
  def create
    @country_info = CountryInfo.new(params[:country_info])

    respond_to do |format|
      if @country_info.save
        format.html { redirect_to @country_info, notice: 'Country info was successfully created.' }
        format.json { render json: @country_info, status: :created, location: @country_info }
      else
        format.html { render action: "new" }
        format.json { render json: @country_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /country_infos/1
  # PUT /country_infos/1.json
  def update
    @country_info = CountryInfo.find(params[:id])

    respond_to do |format|
      if @country_info.update_attributes(params[:country_info])
        format.html { redirect_to @country_info, notice: 'Country info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @country_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_infos/1
  # DELETE /country_infos/1.json
  def destroy
    @country_info = CountryInfo.find(params[:id])
    @country_info.destroy

    respond_to do |format|
      format.html { redirect_to country_infos_url }
      format.json { head :no_content }
    end
  end
end
