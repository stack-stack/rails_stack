class AnswersController < ApplicationController
  def create
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.all
  end

  def index
  end

  def update
  end

  def destroy
  end
end
