class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories
  end

  def show; end

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
