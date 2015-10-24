class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # private
  #
  # def check_token
  #   true unless @member.token.nil?
  #   render json: "You must login first." if @member.token.nil?
  # end
  #
  # helper_method :check_token

end
