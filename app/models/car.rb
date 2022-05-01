class Car < ApplicationRecord
  
  
  validates :brand, presence: true
  validates :model, presence: true
  
  serialize :image, Array

  has_many  :posts, as: :postable
  has_one   :announcement
  has_one_attached :image

  
end
