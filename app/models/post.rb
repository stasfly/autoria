class Post < ApplicationRecord
  belongs_to :user
  belongs_to :postable, polimorphic: true

  validates  :title, presence: true
  validates  :body,  presence: true
end
