class Membership < ApplicationRecord
  belongs_to :site
  belongs_to :category
end
