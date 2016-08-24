require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do
  describe "GET #show" do
    let(:user) {FactoryGirl.create(:user)}
    it "returns http success" do
      get :show, id: user
      expect(response).to have_http_status(:success)
    end
    it "assigns requested user to @user" do
      get :show, id: user
      expect(assigns(:user)).to eq(user)
    end
  end

end
