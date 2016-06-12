class PlacesController < ApplicationController
  def index
    @places = Place.paginate(:page => params[:page], :per_page => 3)
  end

  def new
    @place = Place.new
  end

  def show    
    @place = Place.find(params[:id])
  end  
end
