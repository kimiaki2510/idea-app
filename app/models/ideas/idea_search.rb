class IdeaSearch
  include ActiveModel::Model

  attr_accessor :id, :category, :body

  def search
    self.valid? ? false: Idea.where('body LIKE ?', "#{self.body}")
    #Idea.joins(:category).where("category.name"= name) if name.present?
  end

  #def new
    #@idea = Idea.new
    #@category = Category.new
  #end

  #def create
    #@idea = Idea.new(idea_params)
    #@category = Category.new(category_params)
  #end
end
