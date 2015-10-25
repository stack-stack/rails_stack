class SessionsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    if params[:member]
      member = Member.find_by(username: params[:member][:username])
      if member
        if member.authenticate(params[:member][:password])
          member.token = SecureRandom.hex
          member.save
          render json: member
        else
          render json: {error: "Incorrect login credentials. Please try again."}
        end
      else
        render json: {error: "That user could not be found."}
      end
    else
      render json: {error: "you dun messsed up. Bad params."}
    end
  end

  def destroy
    member.token = nil
  end
end
