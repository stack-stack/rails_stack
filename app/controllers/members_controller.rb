class MembersController < ApplicationController
  before_action :check_token, only: [:edit, :update, :destroy]

  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to sessions_create_path
    end
  end

  def show
    @member.find(member_params)
  end

  def index
    @members = Member.all
  end

  def update
  end

  def destroy
  end

  private

  def member_params
    params.require(:member).permi(:username, :password, :member_id)
  end
end
