class Post < ApplicationRecord
  belongs_to :user
  belongs_to :postable, polymorphic: true

  validates  :title, presence: true
  validates  :body,  presence: true
end
