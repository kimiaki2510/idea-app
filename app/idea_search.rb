class IdeaSearch
  include ActiveModel::Model

  attr_accessor :id, :body, :name

  def search
    rel = Idea
    rel = rel.where(id: id) if id.present?
    rel = rel.where(body: body) if body.present?
    rel = rel.joins(:category).where("category.name"=&gt; name) if name.present?
    rel
  end
end
