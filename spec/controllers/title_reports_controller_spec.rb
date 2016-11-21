require 'rails_helper'

RSpec.describe TitleReportsController, type: :controller do

  describe "GET #show" do
    let(:title_report) {FactoryGirl.create(:title_report)}
    it "returns http success" do
      get :show, id: title_report.buyer_id
      expect(response).to have_http_status(:success)
    end
  end

end
