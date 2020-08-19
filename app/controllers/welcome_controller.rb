class WelcomeController < ApplicationController
  before_action :authenticate_user!
    layout "blog/base"
  def index
    @title = "Bienvenue dans mon blog"
    @categories = Category.all
  end

  def show
    @title = "Details d'un article"
    @category = Category.find(params[:id])
  end

  private 
  
  def category_params

    params.required(:category).permit(:name, :content)
    
  end
end
