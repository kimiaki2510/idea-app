class Category < ApplicationRecord
  has_one :idea, dependent: :destroy
end
