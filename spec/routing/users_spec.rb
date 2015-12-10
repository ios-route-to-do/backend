require 'rails_helper'

RSpec.describe UsersController, type: :routing do
  it 'GET /users/1 routes to #login' do
    expect(get: '/users/1').to route_to('users#show', id: '1')
  end

  it 'POST /users/login routes to #login' do
    expect(post: '/users/login').to route_to('users#login')
  end

  it 'POST /users/register routes to #register' do
    expect(post: '/users/register').to route_to('users#register')
  end

  it 'PUT /users/1 routes to #update' do
    expect(put: '/users/1').to route_to('users#update', id: '1')
  end

  it 'GET /users/1/favorites routes to #favorites' do
    expect(get: '/users/1/favorites').to route_to('users#favorites', id: '1')
  end

  it 'GET /users/1/outings to #outings' do
    expect(get: '/users/1/outings').to route_to('users#outings', id: '1')
  end

  it 'GET /users/1/routes routes to #routes' do
    expect(get: '/users/1/routes').to route_to('users#routes', id: '1')
  end

end
