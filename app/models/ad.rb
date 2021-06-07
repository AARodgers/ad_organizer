class Ad < ApplicationRecord
  has_many :categories, through: :ads_categories
end
