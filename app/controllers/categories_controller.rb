class CategoriesController < ApplicationController
  def index
    if params[:name].present?
      @categories = Category.where('name LIKE ?', "%#{params[:name]}%")
      render json: @categories
    else
      @categories = Category.all
      render json: @categories
    end
  end

  def show; end

  def new; end
  
  def create
    @category = Category.new(category_params)
    if @category.save
      render json: { data: @category }
    else
      render json: { data: @category.errors }
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
