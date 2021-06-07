class Site < ApplicationRecord
  belongs_to :owner
  has_many :memberships
  has_many :categories, through: :memberships
end
