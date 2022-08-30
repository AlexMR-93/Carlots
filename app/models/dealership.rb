class Dealership < ApplicationRecord
  has_many(:cars)
  validates_presence_of :name
  validates_presence_of :num_of_cars_on_lot
  validates :full,   inclusion: [true, false]

  def self.order_desc_created
    self.order(    created_at: :desc)
  end

  def Dealership.count
  end
end
