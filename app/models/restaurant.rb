class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # validates :name, :address, :phone_number, :category, presence: true
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end

# `%w(chinese italian japanese french belgian)`
