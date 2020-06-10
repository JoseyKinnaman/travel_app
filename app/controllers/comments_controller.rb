class CommentsController < ApplicationController
# before_action :authenticate_user!, :only => [:new]
#    before_action :only => [:edit, :destroy, :update] do
#     redirect_to new_user_session_path unless current_user && current_user.admin

def home 
  render :home
end
  
end