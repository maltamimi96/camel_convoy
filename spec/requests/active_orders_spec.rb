require 'rails_helper'

RSpec.describe "ActiveOrders", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/active_orders/create"
      expect(response).to have_http_status(:success)
    end
  end

end
