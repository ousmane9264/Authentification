class CategoriesController < ApplicationController
  layout "blog/base"

  def index
    @categories = Category.all
  end
  def show
    @category = Category.find(params[:id])
  end
  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to categories_path
    else
      render 'edit'
    end  
  end
  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:success] = "Article creer avec success"
      redirect_to categories_path(@category.id)
    else
        render 'new'
    end
     

  end
  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private 
  
  def category_params
    params.required(:category).permit(:name, :content, :date, :image)
  end

  private

  
end
