class ApplicationController < ActionController::API
  respond_to :json
  include ActionController::MimeResponds
end
