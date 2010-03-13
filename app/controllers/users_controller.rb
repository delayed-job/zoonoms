class UsersController < ApplicationController
  def show
    @user = params[:id] ? User.find(params[:id]) : User.find_by_username(params[:username])
    @noms = @user.noms.order('created_at DESC').limit(10)

    respond_to do |format|
      format.html
      format.xml { render :xml => @user }
    end
  end
end
