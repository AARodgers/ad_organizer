class Site < ApplicationRecord
  belongs_to :owner
  has_many :categories, through: :categories_sites
end
