class IdeasController < ApplicationController
  before_action :set_idea, only: [:index, :show]
  def index
    render json: {data: ideas}
  end

  def show; end

  def create
    idea = Idea.new(idea_params)
    if @idea.save
      render json: {data: idea}
    else
      render json: {data: idea.errors}
    end
  end

  private

  def set_idea
    @idea = Idea.find(params[:id])
  end

  def idea_params
    params.require(:idea).permit(:body)
  end
end
