require 'rails_helper'

RSpec.describe "Items", type: :request do
  describe "GET index" do
    it "returns http success" do
      get "/items"

      expect(response).to have_http_status(:success)
    end
  end

  describe "GET new" do
    it "returns http success" do
      get "/items/new"

      expect(response).to have_http_status(:success)
    end
  end

  describe "GET csv" do
    it "returns http success" do
      get "/generate_csv"

      expect(response).to have_http_status(:success)
    end
  end
end
