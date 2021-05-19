class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (0..5) }, numericality: true
end

# [0,1,2,3,4,5]

# %w(0..5)
#
