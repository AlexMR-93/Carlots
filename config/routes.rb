Rails.application.routes.draw do
  get("/",   to: "dealership#index")
  get("/dealership",   to: "dealership#index")
end
