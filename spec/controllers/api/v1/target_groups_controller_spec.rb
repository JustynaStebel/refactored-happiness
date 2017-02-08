require "rails_helper"

describe Api::V1::TargetGroupsController do
  let(:user) { create :user }
  let(:auth_headers) { user.create_new_auth_token }
  let(:country) { create :country }
  let(:target_group) { create :target_group }

  describe "GET /api/v1/target_groups/:country_code" do
    context "with valid country code" do
      before do
        request.headers.merge!(auth_headers)
        request.headers.merge!("Content-Type" => "application/json")
        get :show, country_code: country.country_code
      end

      it "responds with 200" do
        expect(response).to have_http_status :ok
      end
    end
  end
end
