class Api::V1::TranslationsController < ApplicationController

  def index
    @translations = Translation.all
    render json: @translations
  end

  def show
    @translation = Translation.find(params[:id])
    render json: @translation
  end

end
