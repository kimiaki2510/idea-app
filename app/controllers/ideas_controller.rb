class IdeasController < ApplicationController

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
    if params[:category].present?
      @ideas = Idea.where('category LIKE ?', "%#{params[:category]}%")
      render json: @ideas
    else
      @ideas = Idea.all
      @category = Idea.category.all
      #@ideas = Idea.includes(:categories)where(category: {name: params[:category]})
      render json: @ideas
    end
  end

  def show; end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      render json: { data: @idea }
    else
      render json: { data: @idea.errors }
    end
  end

  private

  def idea_params
    params.require(:idea).permit({category: []} ,:body)
  end
end
