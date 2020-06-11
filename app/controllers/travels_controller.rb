class TravelsController < ApplicationController
     before_action :only => [:edit, :destroy, :update] do
    redirect_to new_user_session_path unless current_user && current_user.admin
   end
    def home 
      @places = TravelService.get_places()
      render :home
    end

    def index
      @places = TravelService.get_places()
      # @places = TravelService.page(params[:id])
      # @places = TravelService.pagination_request(params[:page])
      render :index
    end

    def show
      id = params[:id]
      @place = TravelService.get_place(id)
      render :show
    end

    def new
      id = params[:id]
      @place = TravelService.get_place(id)
      render :new
    end

    def create
      @place = TravelService.post_place(params)
      # @author = params[:author]
      # @content = params[:content]
      # @location = params[:place]
      redirect_to travels_path 
    end

    def edit
      @place = TravelService.find(params[:id])
      render :edit
    end

   
    

end
