class MembersController < ApplicationController
  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to sessions_create_path
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
  end

  private

  def member_params
    params.require(:member).permit(:username, :password, :profile_image)
  end

end
