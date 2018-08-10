class Restaurant < ApplicationRecord
  # validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name,:address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
end
