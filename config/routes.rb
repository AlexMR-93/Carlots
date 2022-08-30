Rails.application.routes.draw do
  get("/",   to: "dealership#index")
  get("/dealerships",   to: "dealership#index")
  get("/dealerships/:id",   to: "dealership#show")
  get("/cars",   to: "car#index")
  get("/cars/:id",   to: "car#show")
  get("/dealerships/:id/cars",   to: "dealership_cars#index")
end
