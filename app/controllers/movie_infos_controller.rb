class MovieInfosController < ApplicationController
  # GET /movie_infos
  # GET /movie_infos.json
  def index
    @movie_infos = MovieInfo.all
    
    @movie_infos.each{ |movie_info|
      @type_name = get_movie_type(movie_info.movie_type)
      puts "the movie type name is #{@type_name}"
      @country_name = get_movie_country(movie_info.countray)
      puts "the movie country name is #{@country_name}"
    }
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movie_infos }
    end
  end
  
  # GET /type string info 
  #
  def get_movie_type( the_type_num )
    @typeInfos = TypeInfo.all
    @typeInfos.each{ |type_info|
      if type_info.type_id === the_type_num
        type_info.type_name
      end
    }
  end
  
  
  
  # GET /type string info 
  #
  def get_movie_country( the_country_num )
    @countryInfos = CountryInfo.all
    @countryInfos.each{ |country_info|
      if country_info.country_id === the_country_num
        country_info.country_name
      end
    }
  end
  
  
  # GET /movie_infos/1
  # GET /movie_infos/1.json
  def show
    @movie_info = MovieInfo.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movie_info }
    end
  end
  
  # GET /movie_infos/new
  # GET /movie_infos/new.json
  def new
    @movie_info = MovieInfo.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movie_info }
    end
  end
  
  # GET /movie_infos/1/edit
  def edit
    @movie_info = MovieInfo.find(params[:id])
  end
  
  # POST /movie_infos
  # POST /movie_infos.json
  def create
    @movie_info = MovieInfo.new(params[:movie_info])
    
    respond_to do |format|
      if @movie_info.save
        format.html { redirect_to @movie_info, notice: 'Movie info was successfully created.' }
        format.json { render json: @movie_info, status: :created, location: @movie_info }
      else
        format.html { render action: "new" }
        format.json { render json: @movie_info.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PUT /movie_infos/1
  # PUT /movie_infos/1.json
  def update
    @movie_info = MovieInfo.find(params[:id])
    
    respond_to do |format|
      if @movie_info.update_attributes(params[:movie_info])
        format.html { redirect_to @movie_info, notice: 'Movie info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @movie_info.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /movie_infos/1
  # DELETE /movie_infos/1.json
  def destroy
    @movie_info = MovieInfo.find(params[:id])
    @movie_info.destroy
    
    respond_to do |format|
      format.html { redirect_to movie_infos_url }
      format.json { head :no_content }
    end
  end
end
