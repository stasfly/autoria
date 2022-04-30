class News < ApplicationRecord

  belongs_to :user
  has_many :posts, as: :postable

  validates  :title, presence: true
  validates  :body,  presence: true


end
