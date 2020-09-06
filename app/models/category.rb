class Category < ApplicationRecord
  has_many :ideas
  #belongs_to :idea
end
