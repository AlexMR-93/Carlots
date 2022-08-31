require "rails_helper"

  #before(:each) do
  #  @dealership = Dealership.create!(    name: "the amazing dealership",     num_of_cars_on_lot: 3,     full: false)
  #  @car1 = @dealership.cars.create!(    name: "Ford Focus",     color: "blue",     price: 5000,     miles: 123,     domestic: true)
  #  @car2 = @dealership.cars.create!(    name: "Ram 1500",     color: "red",     price: 6000,     miles: 456,     domestic: true)
  #  @car3 = @dealership.cars.create!(    name: "Toyota Corolla",     color: "yellow",     price: 7000,     miles: 789,     domestic: false)
  #end
  #User Story 2, Parent Show
#As a visitor
#When I visit '/parents/:id'
#Then I see the parent with that id including the parent's attributes:
#- data from each column that is on the parent table
RSpec.describe("dealership show", type: :feature) do
  it("2.Parent Show") do
    dealership = Dealership.create!(    name: "the amazing dealership",     num_of_cars_on_lot: 3,     full: false)
    car1 = dealership.cars.create!(    name: "Ford Focus",     color: "blue",     price: 5000,     miles: 123,     domestic: true)
    car2 = dealership.cars.create!(    name: "Ram 1500",     color: "red",     price: 6000,     miles: 456,     domestic: true)
    car3 = dealership.cars.create!(    name: "Toyota Corolla",     color: "yellow",     price: 7000,     miles: 789,     domestic: false)
    visit("/dealership/#{dealership.id}")
    expect(page).to(have_content(dealership.name))
    expect(page).to(have_content(dealership.num_of_cars_on_lot))
    expect(page).to(have_content(dealership.full))
  end

  it("10.visit a parent show page ('/parents/:id')Then link to ('/parents/:id/child_table_name') ") do
    dealership = Dealership.create!(    name: "the amazing dealership",     num_of_cars_on_lot: 3,     full: false)
    car1 = dealership.cars.create!(    name: "Ford Focus",     color: "blue",     price: 5000,     miles: 123,     domestic: true)
    car2 = dealership.cars.create!(    name: "Ram 1500",     color: "red",     price: 6000,     miles: 456,     domestic: true)
    car3 = dealership.cars.create!(    name: "Toyota Corolla",     color: "yellow",     price: 7000,     miles: 789,     domestic: false)
    visit("/dealership/#{dealership.id}")
    expect(page).to(have_button("Cars Available"))
    click_on("Cars Available")
    expect(current_path).to(eq("/dealership/#{dealership.id}/cars"))
  end
end
