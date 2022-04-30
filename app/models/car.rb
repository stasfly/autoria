class Car < ApplicationRecord
  
  
  validates :brand, presence: true
  validates :model, presence: true
  
  serialize :image, Array

  has_many  :posts, as: :postable
  has_one   :announcement
end

#car = User.second.cars.create(brand: "BMW", model: "315", age: 15, engine: "disel", color: "red", vehicle_type: "sedan", condition: "b/u", description: "Good vehicle", price: 999.99)