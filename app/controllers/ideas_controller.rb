class IdeasController < ApplicationController
  def index
    if params[:category].present?
      @ideas = Idea.where('category LIKE ?', "%#{params[:category]}%")
      render json: @ideas
    else
      @ideas = Idea.all
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
    params.require(:idea).permit(:body, :category_id)
  end
end
