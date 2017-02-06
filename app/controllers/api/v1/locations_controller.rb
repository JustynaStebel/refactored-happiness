class Api::V1::LocationsController < Api::V1::BaseController

  def show
    locations = Country.find_by(country_code: params[:country_code]).location_group.locations
    render json: { locations: locations }, status: :ok
  end
end
