class DealershipsController < ApplicationController
  def index
    @dealerships = Dealership.all.order_desc_created
  end

  def show
    @dealership = Dealership.find(params[:id])
  end
end
