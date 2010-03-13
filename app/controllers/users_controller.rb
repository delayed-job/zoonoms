class UsersController < ApplicationController
  def show
    @user = params[:id] ? User.find(params[:id]) : User.find(params[:username)
    
    respond_to do |format|
      format.html
      format.xml { render :xml => @user }
    end
  end
end
