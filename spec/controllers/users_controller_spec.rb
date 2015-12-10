require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }

  describe 'GET #show' do
    it 'returns http success' do
      get :show, id: user.id

      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #login' do
    it 'returns http success' do
      post :login, email: user.email

      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #register' do
    it 'returns http success' do
      post :register, FactoryGirl.attributes_for(:user)

      expect(response).to have_http_status(:success)
    end

    it 'fails when registering an user twice' do
      post :register, email: user.email

      expect(response).to have_http_status(403)
    end
  end

  describe 'PUT #update' do
    it 'returns http success' do
      put :update, FactoryGirl.attributes_for(:user).merge(id: user.id, profile_image_url: 'http://somesite.net/someimage.png')

      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #favorites' do
    it 'returns http success' do
      get :favorites, id: user.id

      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #outings' do
    it 'returns http success' do
      get :outings, id: user.id

      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #routes' do
    it 'returns http success' do
      get :routes, id: user.id

      expect(response).to have_http_status(:success)
    end
  end

end
