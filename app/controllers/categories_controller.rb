class CategoriesController < ApplicationController

  ##################################################
  #1. アイデア登録API
  #
  #📌リクエストのcategory_nameがcategoriesテーブルのnameに存在する場合
  #
  #📌・categoryのidをcategory_idとして、ideasテーブルに登録してください。
  #
  #📌リクエストのcategory_nameがcategoriesテーブルのnameに存在しない場合
  #
  #📌・新たなcategoryとしてcategoriesテーブルに登録し、ideasテーブルに登録してください。
  ##################################################
  ##################################################
  #2. アイデア取得API
  #
  #📌category_nameが指定されている場合は該当するcategoryのideasの一覧を返却してください。
  #
  #📌category_nameが指定されていない場合は全てのideasを返却してください。
  ##################################################

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
