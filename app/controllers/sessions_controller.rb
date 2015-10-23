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
    #set token to nil
  end
end


login with username, password
request to rails
rails gives token as json
javascript keeps token in memory
javascript requests view of all questions, etc.
rails gives list of ?? as json
