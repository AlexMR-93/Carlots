Rails.application.routes.draw do
  get("/",   to: "dealerships#index")
  get("/dealerships",   to: "dealerships#index")
  get("/dealership/:id",   to: "dealerships#show")
  get("/cars",   to: "cars#index")
  get("/cars/:id",   to: "cars#show")
  get("/dealership/:id/cars",   to: "dealership_cars#index")
end
