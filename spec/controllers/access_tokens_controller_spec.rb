require 'rails_helper'

RSpec.describe AccessTokensController, type: :controller do
  describe '#create' do
    context 'when invalid request' do
      let(:error) do
        {
          'status' => '401',
          'source' => { 'pointer' => '/code' },
          'title' => 'Authjentication code is invalid',
          'detail' => 'You must provide a valid code in order to exchange it for a token'
        }
      end
      it 'should return invalid 401 status code' do
        post :create
        expect(json['errors']).to include(error)
      end
    end
  end
end
