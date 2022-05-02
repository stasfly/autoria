class Car < ApplicationRecord
  
  
  validates :brand, presence: true
  validates :model, presence: true
  validates :images, content_type: { in: %w[image/jpeg image/gif image/png],
                                  message: "must be a valid image format" },
                    size:
                                  { less_than: 5.megabytes,
                                  message:
                                  "should be less than 5MB" }
  
  serialize :image, Array

  has_many  :posts, as: :postable
  has_one   :announcement
  has_many_attached :images

  def self.current=(car)
    @current_car = car
  end

  def self.current
    @current_car
  end
  
  
end
