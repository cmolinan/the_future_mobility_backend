require 'json_web_token'
require 'bcrypt'

class UsersController < ApplicationController  
  include BCrypt
  before_action :authorize_request, except: %i[login signup]

  def index; end

  def login
    @user = User.find_by_email(params[:email])
    # debugger
    if @user
      if Password.new(@user.encrypted_password) == params[:password]
        token = JsonWebToken.encode(user_id: @user.id)
        time = Time.now + 24.hours.to_i
        render json: { token:, exp: time.strftime('%m-%d-%Y %H:%M'),
                       name: @user.name }, status: :ok
      else
        render json: { error: 'unauthorized' }, status: :unauthorized
      end
    else
      render json: { error: 'unauthorized', error_message: @user.errors }, status: :unauthorized
    end
  end

  def signup
    @user = User.new(signup_params)
    puts params
    if @user.save
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i
      render json: { token:, exp: time.strftime('%m-%d-%Y %H:%M'),
                     name: @user.name }, status: :ok
    else
      render json: { error: 'unauthorized', error_message: @user.errors }, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:email, :password)
  end

  def signup_params
    params.permit(:name, :email, :password, :password_confirmation, :confirmed_at)
  end

end
