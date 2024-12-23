class Tagging < ApplicationRecord
  belongs_to :venue
  belongs_to :tag
end
