class Category < ApplicationRecord
  has_one :idea, dependent: :destroy

  Idea.joins(:category).where('category.name like ?', "%#{name}%")    
end
