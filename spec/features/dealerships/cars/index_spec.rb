require "rails_helper"


RSpec.describe("car index", type: :feature) do
  before(:each) do
    @dealership = Dealership.create!(    name: "the amazing dealership",     num_of_cars_on_lot: 3,     full: false)
    @car1 = @dealership.cars.create!(    name: "Ford Focus",     color: "blue",     price: 5000,     miles: 123,     domestic: true)
    @car2 = @dealership.cars.create!(    name: "Ram 1500",     color: "red",     price: 6000,     miles: 456,     domestic: true)
    @car3 = @dealership.cars.create!(    name: "Toyota Corolla",     color: "yellow",     price: 7000,     miles: 789,     domestic: false)
  end

  it("5. each dealerships cars") do
    visit("/dealership/#{@dealership.id}/cars")

    within(".cars") do
      within("#car-#{@car1.id}") do
        expect(page).to(have_content(@car1.name))
        expect(page).to(have_content(@car1.color))
        expect(page).to(have_content(@car1.price))
        expect(page).to(have_content(@car1.miles))
        expect(page).to(have_content(@car1.domestic))
      end
    end
  end
end
