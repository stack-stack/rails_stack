class Answer < ActiveRecord::Base
  belongs_to :member
  belongs_to :question

  def upvote
    @answer = Answer.find(params[:id])
    @answer.answer_votes += 1
    @answer.answer_votes.save
  end

  def downvote
    @answer = Answer.find(params[:id])
    @answer.answer_votes -= 1
    @answer.answer_votes.save
  end
end
