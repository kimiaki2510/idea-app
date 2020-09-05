class CategoriesController < ApplicationController
  before_action :set_category, only: [:index, :show]
  def index
    render json: {data: categories}
  end

  def show; end

  def create
    category = Category.new(category_params)
    if category.save
      render json: {data: category}
    else
      render json: {data: category.errors}
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
