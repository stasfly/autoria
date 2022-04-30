class User < ApplicationRecord
  has_many :announcements
  has_many :posts
  has_many :cars, through: :announcements
  has_many :news
  has_many :favorites

  validates :name,  presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                                      format: { with: VALID_EMAIL_REGEX },
                                      uniqueness: true
  
end
