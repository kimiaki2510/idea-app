class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    render json: { data: @idea }
  end

  def show; end

  def create    
    @idea = Idea.new(idea_params)
    if @idea.save
      render json: { status: 201, data: @idea }
    else
      render json: { status: 422, data: @idea.errors }
    end
  end

  private

  def idea_params
    params.require(:idea).permit(:body, :category_id)
  end
end
