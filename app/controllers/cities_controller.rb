class CitiesController < ApplicationController
  
  def index
    @cities = City.all
  end
  
  def new
    @city = City.new    
  end
  
  def create
    @city = City.new(city_params)
    if @city.save
        redirect_to cities_path, notice: 'City was successfully created.' 
    else
        render :new 
    end  
  end
  

  def delete
    @city = set_city
  end

  def destroy
    city = set_city.destroy
    redirect_to cities_url, notice: 'City was successfully destroyed.'
  end

  private
    def set_city
      @city = City.find(params[:id])
    end

    def city_params
      params.require(:city).permit(:city_id,:city_name)
    end
end
