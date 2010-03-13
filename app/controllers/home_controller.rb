class HomeController < ApplicationController
  def index
    if user_signed_in?
      @noms = current_user.noms.order('created_at DESC').limit(10)
      @nom = Nom.new
    else
      @recent_noms = Nom.order('created_at DESC').limit(10)
    end
  end
end
