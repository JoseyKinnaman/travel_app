class CommentsController < ApplicationController
    before_action :authenticate_user!, :only => [:new]
    before_action :only => [:edit, :destroy, :update] do
    redirect_to new_user_session_path unless current_user && current_user.admin
   end

  # def home 
  #   @places = TravelService.get_place()
  #   render :home
  # end

  # def index
  #   @comments = Comment.all 
  #   render :index
  # end

  def new
    @places = TravelService.get_place()
    @comment = Comment.new
    render :new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:notice] = "New comment added!"
      refirect_to comments_path
    else
      flash[:notice] = "Something went wrong"
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    render :edit
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Comment edited!"
      redirect_to comments_path
    else
      render :edit
    end
  end

  def show
    @comment - Comment.find(params[:id])
    render :show
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment deleted!"
      redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :rating, :comment)
  end
  
end