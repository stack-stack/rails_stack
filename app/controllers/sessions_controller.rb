class SessionsController < ApplicationController
  def create
    @member = Member.find(params[:username])
    if @member && @member.authenticate(params[:password])
      @member.token = SecureRandom.hex
      @member.save
    else
      render json: "Incorrect login credentials. Please try again."
    end
  end

  def destroy
    @member.token = nil
  end
end
