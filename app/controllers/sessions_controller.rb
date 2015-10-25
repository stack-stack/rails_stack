class SessionsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    @member = Member.find_by(params[:username])
    if @member.save
      render json: @member
    # if @member && @member.authenticate(params[:password])
    #   byebug
    #   @member.token = SecureRandom.hex
    #   @member.save
    #   render json: @member
    else
      render json: "Incorrect login credentials. Please try again."
    end
  end

  def destroy
    @member.token = nil
  end
end
