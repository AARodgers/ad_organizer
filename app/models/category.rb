class Category < ApplicationRecord
  has_many :sites, through: :categories_sites
  has_many :ads, through: :ads_categories
end
