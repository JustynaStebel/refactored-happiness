class Api::Public::LocationsController < ApplicationController

  def show
    locations = Country.find_by(country_code: params[:country_code]).location_group.locations
    render json: { locations: locations }, status: :ok
  end
end
