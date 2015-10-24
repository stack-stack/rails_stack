json.extract! @question, :id, :member_id, :title, :question_body, :question_votes
json.answers @question.answers do |a|
  json.extract! a, :id, :member_id, :question_id, :answer_votes, :answer_body
end
