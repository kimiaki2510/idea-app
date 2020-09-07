class Category < ApplicationRecord
  belongs_to :idea

  def to_param
    name
  end
end
