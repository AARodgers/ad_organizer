class Ad < ApplicationRecord
  has_many :categories, through: :categorizations
  has_many :categorizations
end
