# Controller for access token
class AccessTokensController < ApplicationController
  rescue_from UserAuthenticator::AuthenticationError, with: :authentication_error
  def create
    authenticator = UserAuthenticator.new(params[:code])
     authenticator.perform
  end

  private
  def authentication_error
    error =
      {
        'status' => '401',
        'source' => { 'pointer' => '/code' },
        'title' => 'Authjentication code is invalid',
        'detail' => 'You must provide a valid code in order to exchange it for a token'
      }
    render json: {"errors": [ error ]}, status: 401
  end
end
