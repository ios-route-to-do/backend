require "rails_helper"

RSpec.describe RoutesController, type: :controller do

  let(:user) { FactoryGirl.create(:user) }
  let(:route) { FactoryGirl.create(:route) }
  let(:favorite) { FactoryGirl.create(:favorite, user: user, route: route) }
  let(:route_params) do
    {
      title: "a route",
      location: "San Francisco",
      full_description: "Description",
      image_url: "http://some_url",
      user_id: user.id,
      places: [
        {
          name: "a route",
          full_description: "Description",
          location: "San Francisco",
          address: "San Francisco",
          image_url: "http://some_url",
          lat: 0.0,
          lng: 0.0,
        },
        {
          name: "a route",
          full_description: "Description",
          location: "San Francisco",
          address: "San Francisco",
          image_url: "http://some_url",
          lat: 0.0,
          lng: 0.0,
        },
        {
          name: "a route",
          full_description: "Description",
          location: "San Francisco",
          address: "San Francisco",
          image_url: "http://some_url",
          lat: 0.0,
          lng: 0.0,
        }
      ]
    }
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: route.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post(:create, route_params)
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #create" do
    it "returns http success" do
      route

      put(:update, {id: route.id}.merge(route_params))

      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #trending" do
    it "returns http success" do
      get :trending
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #rate" do
    it "returns http success" do
      post :rate, user_id: user.id, id: route.id, rating: 5.0
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #finish" do
    it "returns http success" do
      post :finish, user_id: user.id, id: route.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #favorite" do
    it "returns http success" do
      post :favorite, user_id: user.id, id: route.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #unfavorite" do
    it "returns http success" do
      favorite

      post :unfavorite, user_id: user.id, id: route.id

      expect(response).to have_http_status(:success)
    end
  end

end
