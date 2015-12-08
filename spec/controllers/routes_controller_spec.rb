require 'rails_helper'

RSpec.describe RoutesController, type: :controller do

  let(:user) { FactoryGirl.create(:user) }
  let(:route) { FactoryGirl.create(:route) }
  let(:favorite) { FactoryGirl.create(:favorite, user: user, route: route) }

  describe 'GET #show' do
    it 'returns http success' do
      get :show, id: route.id
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    it 'returns http success'
  end

  describe 'GET #trending' do
    it 'returns http success' do
      get :trending
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #rate' do
    it 'returns http success' do
      post :rate, user_id: user.id, id: route.id, rating: 5.0
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #finish' do
    it 'returns http success' do
      post :finish, user_id: user.id, id: route.id
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #favorite' do
    it 'returns http success' do
      post :favorite, user_id: user.id, id: route.id
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #unfavorite' do
    it 'returns http success' do
      favorite

      post :unfavorite, user_id: user.id, id: route.id
      expect(response).to have_http_status(:success)
    end
  end

end
