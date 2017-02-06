class Api::Public::TargetGroupsController < ApplicationController

  def show
    groups = Country.find_by(country_code: params[:country_code]).target_groups
    render json: { groups: groups }, status: :ok
  end
end
