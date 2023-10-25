class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def show
    @rental = Rental.find(params[:id])
  end

  def new
    @rental = Rental.new
  end

  def edit

  end

  def create
    Rental.create(rental_params)
    redirect_to new_rental_path
  end

  private

  def rental_params
    params.require(:rental).permit(:name,:rent,:add,:years,:note)
  end

end







