require "rails_helper"


RSpec.describe("dealership index", type: :feature) do
  before(:each) do
    @dealership = Dealership.create!(    name: "the amazing dealership",     num_of_cars_on_lot: 3,     full: false)
    @car1 = @dealership.cars.create!(    name: "Ford Focus",     color: "blue",     price: 5000,     miles: 123,     domestic: true)
    @car2 = @dealership.cars.create!(    name: "Ram 1500",     color: "red",     price: 6000,     miles: 456,     domestic: true)
    @car3 = @dealership.cars.create!(    name: "Toyota Corolla",     color: "yellow",     price: 7000,     miles: 789,     domestic: false)
  end

  it(" 1.the name of each parent record in the system") do
    visit("/dealerships")
    expect(page).to(have_content(@dealership.name))
  end

  it("9.link at the top of the page that takes me to the Parent Index") do
    visit("/dealerships/#{@dealership.id}/cars")
    expect(page).to(have_link("Back to Dealerships"))
    visit("/cars")
    expect(page).to(have_link("Dealerships"))
    visit("/")
    expect(page).to(have_link("Home Dealerships"))
    visit("/dealerships/#{@dealership.id}")
    expect(page).to(have_link("Back to all Dealerships"))
    visit("/dealerships")
    expect(page).to(have_link("Home Dealerships"))
  end
end
