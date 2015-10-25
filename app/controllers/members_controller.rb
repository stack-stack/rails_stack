class MembersController < ApplicationController
  #before_action :check_token, only: [:show, :update, :destroy]
  skip_before_filter  :verify_authenticity_token

  def create
    @member = Member.new(member_params)
    if @member.save
      render json: @member
    end
  end

  def show
    @member = Member.find(params[:id])
  end

  def index
    @members = Member.all
  end

  def update
    @member.update(member_params)
  end

  def destroy
    @member.destroy
  end

  private

  def member_params
    params.require(:member).permit(:username, :password, :profile_image)
  end

end
