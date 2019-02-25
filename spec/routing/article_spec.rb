require 'rails_helper'
describe 'Article Routes' do
  it 'should route to article index' do
    # get('/articles').should route_to('articles#index')
    expect(get: '/articles').to route_to(
      controller: 'articles',
      action: 'index'
    )
  end

  it 'should route to articles show ' do
    # get('/articles').should route_to('articles#index')
    expect(get: '/articles/1').to route_to(
      controller: 'articles',
      action: 'show',
      id: '1'
    )
  end
end
