require "rails_helper"

describe Api::Public::TargetGroupsController do
  let(:country) { create :country }
  let(:target_group) { create :target_group }

  describe "GET /api/public/target_groups/:country_code" do
    context "with valid country code" do
      setup do
        get :show, country_code: country.country_code
      end

      it "responds with 200" do
        expect(response).to have_http_status :ok
      end
    end
  end
end
