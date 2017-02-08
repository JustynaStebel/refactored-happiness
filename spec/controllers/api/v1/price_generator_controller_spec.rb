require "rails_helper"

describe Api::V1::PriceGeneratorController do
  let(:user) { create :user }
  let(:auth_headers) { user.create_new_auth_token }
  let!(:location_group) { create :location_group }
  let!(:country) { location_group.country }
  let(:location) do
    { id:1, panel_size: 20 }
  end
  let(:locations) { [location] }

  describe "POST /api/v1/evaluate_target" do
    context "with valid country code" do
      before do
        request.headers.merge!(auth_headers)
        request.headers.merge!("Content-Type" => "application/json")
        post :evaluate_target, {
          country_code: country.country_code,
          target_group_id: country.target_groups.first.id,
          locations: locations
          }
      end

      it "responds with 200" do
        expect(response).to have_http_status :ok
      end
      it "returns correct price" do
        expect(JSON.parse(response.body)["price"]).to eq(73.9)
      end
    end
  end
end
