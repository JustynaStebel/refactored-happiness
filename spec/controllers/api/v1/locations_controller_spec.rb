require "rails_helper"

describe Api::V1::LocationsController do
  let(:user) { create :user }
  let(:auth_headers) { user.create_new_auth_token }
  let!(:location) { create :location }

  describe "GET /api/v1/locations/:country_code" do
    context "with valid country code" do
      before do
        request.headers.merge!(auth_headers)
        request.headers.merge!("Content-Type" => "application/json")
        get :show, { country_code: "BT" }
      end

      it "responds with 200" do
        expect(response).to have_http_status :ok
      end
    end
  end
end
