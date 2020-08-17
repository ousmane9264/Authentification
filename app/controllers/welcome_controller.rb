class WelcomeController < ApplicationController
    layout "blog/base"
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  private 
  
  def category_params

    params.required(:category).permit(:name, :content)
    
  end
end
