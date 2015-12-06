require 'rails_helper'

RSpec.describe ImagesController, type: :routing do
  it 'GET /images/1 routes to #show' do
    expect(get: '/images/1').to route_to('images#show', id: '1')
  end

  it 'POST /images routes to #create' do
    expect(post: '/images').to route_to('images#create')
  end
end
