class QuestionsController < ApplicationController
  #before_action :check_token, only: [:create, :update, :destroy]
  skip_before_filter  :verify_authenticity_token

  def create
    @question = Question.new(question_params)
    if @question.save
      render json: @question
    else
      render json: "Question not saved...try again."
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def index
    @questions = Question.all
  end

  def update
    @question.update(question_params)
  end

  def destroy
    @question.destroy
  end

  private

  def question_params
    params.require(:question).permit(:title, :question_body, :question_votes)
  end

end
