class Announcement < ApplicationRecord
  validates :purpose,  presence: true
  validates :location, presence: true 
  
  belongs_to :user
  belongs_to :car
  has_many   :favorites
  has_many   :posts, as: :postable
end

# ann = Announcement.create(user_id: User.second.id, car_id: Car.first.id, purpose: "sale", location: "Lviv")