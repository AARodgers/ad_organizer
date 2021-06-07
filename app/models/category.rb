class Category < ApplicationRecord
  has_many :sites, through: :memberships
  has_many :ads, through: :categorizations
  has_many :memberships
  has_many :categorizations
end
