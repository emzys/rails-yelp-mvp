class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"] ;
  has_many :reviews, dependent: :destroy
  # validates :name, :address, :phone_number, :category, presence: true
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end

# `%w(chinese italian japanese french belgian)`
