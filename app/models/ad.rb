class Ad < ApplicationRecord
    has_many :categories, :through => :

end
