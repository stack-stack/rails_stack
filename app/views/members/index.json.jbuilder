json.array! @members do |m|
  json.id m.id
  json.username m.username
  json.password m.password_digest
  json.questions m.questions
end
