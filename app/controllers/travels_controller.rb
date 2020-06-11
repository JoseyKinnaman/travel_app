class TravelsController < ApplicationController
    def home 
      @places = TravelService.get_places()
      render :home
    end

    def index
      @places = TravelService.get_places()
      render :index
    end

    def show
      id = params[:id]
      @place = TravelService.get_place(id)
      render :show
    end

end
