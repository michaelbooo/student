class TypeInfosController < ApplicationController
  # GET /type_infos
  # GET /type_infos.json
  def index
    @type_infos = TypeInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_infos }
    end
  end

  # GET /type_infos/1
  # GET /type_infos/1.json
  def show
    @type_info = TypeInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @type_info }
    end
  end

  # GET /type_infos/new
  # GET /type_infos/new.json
  def new
    @type_info = TypeInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type_info }
    end
  end

  # GET /type_infos/1/edit
  def edit
    @type_info = TypeInfo.find(params[:id])
  end

  # POST /type_infos
  # POST /type_infos.json
  def create
    @type_info = TypeInfo.new(params[:type_info])

    respond_to do |format|
      if @type_info.save
        format.html { redirect_to @type_info, notice: 'Type info was successfully created.' }
        format.json { render json: @type_info, status: :created, location: @type_info }
      else
        format.html { render action: "new" }
        format.json { render json: @type_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /type_infos/1
  # PUT /type_infos/1.json
  def update
    @type_info = TypeInfo.find(params[:id])

    respond_to do |format|
      if @type_info.update_attributes(params[:type_info])
        format.html { redirect_to @type_info, notice: 'Type info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_infos/1
  # DELETE /type_infos/1.json
  def destroy
    @type_info = TypeInfo.find(params[:id])
    @type_info.destroy

    respond_to do |format|
      format.html { redirect_to type_infos_url }
      format.json { head :no_content }
    end
  end
end
