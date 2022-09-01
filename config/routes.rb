Rails.application.routes.draw do
  get("/",   to: "dealerships#index")
  get("/dealerships",   to: "dealerships#index")
  get("/dealerships/new",   to: "dealerships#new")
  post("/dealerships",   to: "dealerships#create")
  get("dealerships/:id/edit",   to: "dealerships#edit")
  get("dealerships/:id",   to: "dealerships#update")
  get("/dealerships/:id",   to: "dealerships#show")
  get("/cars",   to: "cars#index")
  get("/cars/:id",   to: "cars#show")
  get("/dealerships/:id/cars",   to: "dealership_cars#index")
end
