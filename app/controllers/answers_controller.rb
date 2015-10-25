class AnswersController < ApplicationController
  #before_action :check_token, only: [:create, :update, :destroy]
  skip_before_filter  :verify_authenticity_token

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      render json: @answer
    else
      render json: "Answer not saved...try again."
    end
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def index
    @answers = Answer.all
  end

  def update
  end

  def destroy
  end

  private

  def answer_params
    params.require(:answer).permit(:answer_body, :answer_votes, :accepted)
  end
end
