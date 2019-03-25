class Api::V1::TranslationsController < ApplicationController

  def index
    trip = Trip.find(params[:trip_id])
    @translations = trip.translations
    render json: @translations
  end

  def show
    @translation = Translation.find(params[:id])
    render json: @translation
  end

end
