class Api::V1::PriceGeneratorController < Api::V1::BaseController
  before_action :get_country

  def evaluate_target
    country_code = @country.country_code
    panel_id = @country.panel_provider_id
    render json: { price: get_panel(panel_id).perform }, status: :ok
  end

  private
  def get_country
    @country = Country.find(params[:id])
  end

  def get_panel(panel_id)
    { 1 => P1PriceGenerator, 2 => P2PriceGenerator, 3 => P3PriceGenerator }.fetch(panel_id)
  end

  def price_params
  end
end
