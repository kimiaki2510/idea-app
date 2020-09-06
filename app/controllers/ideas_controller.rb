class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    render json: {data: @idea}
  end

  def show; end

  def create
    #@category = Category.find(category_id: @category.name)
    @idea = Idea.new(idea_params)
    if @idea.save
      render json: {data: @idea}
    else
      render json: {data: @idea.errors}
    end
  end

  private

  def idea_params
    params.require(:idea).permit(:body, :category_id)
  end
end
