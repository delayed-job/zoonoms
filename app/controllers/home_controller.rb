class HomeController < ApplicationController
  def index
    @noms = current_user.noms.order('created_at DESC').limit(10)
  end
end
