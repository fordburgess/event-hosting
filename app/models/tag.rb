class Tag < ApplicationRecord
  has_many :taggings
  has_many :venues, through: :taggings
end
