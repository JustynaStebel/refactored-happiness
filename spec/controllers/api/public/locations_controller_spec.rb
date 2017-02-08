require "rails_helper"

describe Api::Public::LocationsController do
  let!(:location) { create :location }

  describe "GET /api/public/locations/:country_code" do
    context "with valid country code" do
      setup do
        get :show, country_code: "BT"
      end

      it "responds with 200" do
        expect(response).to have_http_status :ok
      end
    end
  end
end
