class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @cities = City.find(params[:id])
    @gosspis_city = Gossip.where(city_id: params[:id])
  end
end
