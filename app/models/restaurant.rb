class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] } # para droplist en la view
  validates :name, presence: true
  validates :address, presence: true
end
