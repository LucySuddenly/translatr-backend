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

  def create
    @translation = Translation.create(trip_id: params[:trip_id], source_text: params[:source_text], output_text: params[:output_text])
    render json: @translation
  end

  def destroy
    @translation = Translation.find(params[:id])
    render json: @translation
    @translation.delete
  end

end
