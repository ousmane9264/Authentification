class WelcomeController < ApplicationController
    layout "blog/base"
  def index
    flash[:success] = "Bienvenue sur la page acceuil"
  end
end
