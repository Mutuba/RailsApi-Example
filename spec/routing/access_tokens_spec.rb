require 'rails_helper'
describe 'access token routes' do
  it 'should ropute to access_tokens create action' do
    expect(post('/login')).to route_to 'access_tokens#create'
  end
end
