require 'json_web_token'
require 'bcrypt'

class ApplicationController < ActionController::API
  include ActionController::MimeResponds

  def not_found
    render json: { error: 'not_found' }
  end

  private

  def authorize_request
    header = request.headers['Authorization']
    header = header.split.last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end
end
