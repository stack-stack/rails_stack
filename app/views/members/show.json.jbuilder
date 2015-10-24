json.extract! @member, :id, :profile_image, :username, :token
json.questions @member.questions do |q|
  json.extract! q, :id, :member_id, :title, :question_body, :question_votes
end
json.answers @member.answers do |a|
  json.extract! a, :id, :member_id, :question_id, :answer_votes, :answer_body
end
