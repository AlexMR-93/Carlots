class DealershipController < ApplicationController
  def index
    @dealerships = Dealership.all
  end
end
