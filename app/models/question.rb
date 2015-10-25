class Question < ActiveRecord::Base
  belongs_to :member
  has_many :answers

  def upvote
    @question = Question.find(params[:id])
    @question.question_votes += 1
    @question.question_votes.save
  end

  def downvote
    @question = Question.find(params[:id])
    @question.question_votes -= 1
    @question.question_votes.save
  end

end
