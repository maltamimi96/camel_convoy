require 'rails_helper'

RSpec.describe "Listings", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/listings/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/listings/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/listings/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/listings/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/listings/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
