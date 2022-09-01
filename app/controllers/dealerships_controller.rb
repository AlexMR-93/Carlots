class DealershipsController < ApplicationController
  def index
    @dealerships = Dealership.all.order_desc_created
  end

  def show
    @dealership = Dealership.find(params[:id])
  end

  def new
    @dealership = Dealership.new
  end

  def create
    @dealership = Dealership.new(    name: params[:name],     num_of_cars_on_lot: params[:num_of_cars_on_lot],     full: params[:full])

    if @dealership.save
      redirect_to("/dealerships")
    else
      render("new")
    end
  end

  def edit
  end

  def updated
  end
end
