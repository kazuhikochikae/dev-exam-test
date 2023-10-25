class RentalsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @rental = Rental.new
  end

  def edit
  end

  def create
    Rental.create(name: params[:rental][:name], rent: params[:rental][:rent],add: params[:rental][:add],years: params[:rental][:years],note: params[:rental][:note])
    redirect_to new_rental_path
  end
end







