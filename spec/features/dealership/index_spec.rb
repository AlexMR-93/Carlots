require "rails_helper"


RSpec.describe("dealership index", type: :feature) do
  before(:each) do
    @dealership1 = Dealership.create!(    name: "the amazing dealership",     num_of_cars_on_lot: 3,     full: false)
    @car1 = @dealership1.cars.create!(    name: "Ford Focus",     color: "blue",     price: 5000,     miles: 123,     domestic: true)
    @car2 = @dealership1.cars.create!(    name: "Ram 1500",     color: "red",     price: 6000,     miles: 456,     domestic: true)
    @car3 = @dealership1.cars.create!(    name: "Toyota Corolla",     color: "yellow",     price: 7000,     miles: 789,     domestic: false)
  end

  #User Story 1, Parent Index
#For each parent table
#As a visitor
#When I visit '/parents'
#Then I see the name of each parent record in the system
  it(" 1.name of dealership") do
    visit("/dealership")
    expect(page).to(have_content(@dealership1.name))
  end
end
