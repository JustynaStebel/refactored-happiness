class Api::Public::LocationsController < ApplicationController
  def show
    locations = Country.find(params[:id]).location_group.locations
  end
end
