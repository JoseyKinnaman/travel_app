# class CommentsController < ApplicationController
#     before_action :authenticate_user!, :only => [:new]
#     before_action :only => [:edit, :destroy, :update] do
#     redirect_to new_user_session_path unless current_user && current_user.admin
#    end

#   # def home 
#   #   @places = TravelService.get_place()
#   #   render :home
#   # end

#   # def index
#   #   @comments = Comment.all 
#   #   render :index
#   # end

#   def new
#     id = params[:id]
#     @place = TravelService.get_place(id)
#     @comment = Comment.new
#     render :new
#   end

#   def create
#     @place = TravelService.get_place(params[:id])
#     @comment = @place.comments.new(comment_params)
#     if @comment.save
#       flash[:notice] = "New comment added!"
#       refirect_to comments_path(@place)
#     else
#       flash[:notice] = "Something went wrong"
#       render :new
#     end
#   end

#   def edit
#     @place = TravelService.get_place(params[:id])
#     @comment = Comment.find(params[:id])
#     render :edit
#   end

#   def update
#     @comment = Comment.find(params[:id])
#     if @comment.update(comment_params)
#       flash[:notice] = "Comment edited!"
#       redirect_to comments_path(@comment.place)
#     else
#       render :edit
#     end
#   end

#   def show
#     @place = TravelService.get_place(params[:id])
#     @comment = Comment.find(params[:id])
#     render :show
#   end

#   def destroy
#     @comment = Comment.find(params[:id])
#     @comment.destroy
#     flash[:notice] = "Comment deleted!"
#       redirect_to comments_path
#   end

#   private
#   def comment_params
#     params.require(:comment).permit(:author, :rating, :comment, :place_id)
#   end
  
# end