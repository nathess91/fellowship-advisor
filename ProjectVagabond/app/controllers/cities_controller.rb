class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = City.create(city_params)
  end

  def show
    @city = City.find_by_name(params[:name])
  end

  private

  def city_params
    params.require(:city).permit(:name, :country, :picture)
  end
end
