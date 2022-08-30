Rails.application.routes.draw do
  get("/",   to: "dealership#index")
  get("/dealership",   to: "dealership#index")
  get("/dealership/:id",   to: "dealership#show")
  get("/cars",   to: "car#index")
  get("/cars/:id",   to: "car#show")
end
