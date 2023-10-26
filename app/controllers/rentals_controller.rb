class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def show
    @rental = Rental.find(params[:id])
  end

  def new
    @rental = Rental.new
    @rental.stations.new
    @rental.stations.new
  end

  def edit
    @rental = Rental.find(params[:id])
    @rental.stations.build
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

  def destroy
    @rental = Rental.find(params[:id])
    @rental.stations.each do |station|
      station.destroy
    end

    @rental.destroy
    redirect_to rentals_path
  end


  private

  def rental_params
    params.require(:rental).permit(:name,:rent,:add,:years,:note, stations_attributes: [:id, :route, :name, :minutes])
  end



end







