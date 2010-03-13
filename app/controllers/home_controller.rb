class HomeController < ApplicationController
  def index
    @noms = current_user.noms.order('created_at').limit(10)
  end
end
