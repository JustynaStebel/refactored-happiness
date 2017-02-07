class Api::V1::PriceGeneratorController < Api::V1::BaseController
  before_action :get_country

  def evaluate_target
    target_group_id = @country.target_groups.find_by(id: params[:target_group_id])
    location_ids = params[:locations].map { |loc| loc["id"] }
    locations = @country.location_group.locations.find_by(location_ids)
    panel_id = @country.panel_provider_id
    render json: { price: get_panel(panel_id).perform }, status: :ok
  end

  private
  def get_country
    @country = Country.find_by(country_code: params[:country_code])
  end

  def get_panel(panel_id)
    { 1 => P1PriceGenerator, 2 => P2PriceGenerator, 3 => P3PriceGenerator }.fetch(panel_id)
  end
end
