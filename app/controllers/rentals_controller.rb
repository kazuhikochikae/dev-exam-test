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
    @rental = Rental.find(params[:id])
  end

  def create
    @rental = Rental.new(rental_params)
    if @rental.save
      redirect_to rentals_path
    else 
      render :new
    end
  end

  def update
    @rental = Rental.find(params[:id])
    if @rental.update(rental_params)
      redirect_to rentals_path
    else
      render :edit
    end
  end


  private

  def rental_params
    params.require(:rental).permit(:name,:rent,:add,:years,:note)
  end

end







