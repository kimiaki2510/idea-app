class Idea < ApplicationRecord
  belongs_to :category

  Idea.joins(:category).where('category.name like ?', "%#{name}%")    
end
