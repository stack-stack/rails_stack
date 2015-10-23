class SessionsController < ApplicationController
  def create
    member = member.find(params[:username])
    if member && member.authenticate(params[:password])
      member.token = SecureRandom.hex
      member.save
      render json: member
    end
  end

  def destroy
  end
end
