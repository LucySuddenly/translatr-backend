class Api::V1::TripsController < ApplicationController

  def index
    user = User.find(params[:user_id])
    @trips = user.trips
    render json: @trips
  end

  def show
    @trip = Trip.find(params[:id])
    render json: @trip
  end

  def create
    @trip = Trip.create(name: params[:name], user_id: params[:user_id])
    render json: @trip
  end

  def destroy
    @trip = Trip.find(params[:id])
    render json: @trip
    @trip.delete
  end

end
