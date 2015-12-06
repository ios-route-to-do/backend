require 'rails_helper'

RSpec.describe RoutesController, type: :routing do

  it 'GET /routes/trending routes to #trending' do
    expect(get: '/routes/trending').to route_to('routes#trending')
  end

  it 'GET /routes/new routes to #new' do
    expect(get: '/routes/new').to route_to('routes#new')
  end

  it 'POST /routes/1/rate routes to #rate' do
    expect(post: '/routes/1/rate').to route_to('routes#rate', id: '1')
  end

  it 'POST /routes/1/finish routes to #finish' do
    expect(post: '/routes/1/finish').to route_to('routes#finish', id: '1')
  end

  it 'POST /routes/1/favorite routes to #favorite' do
    expect(post: '/routes/1/favorite').to route_to('routes#favorite', id: '1')
  end

  it 'POST /routes/1/unfavorite routes to #unfavorite' do
    expect(post: '/routes/1/unfavorite').to route_to('routes#unfavorite', id: '1')
  end

end
