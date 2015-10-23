json.array! @members do |m|
  json.id m.id
  json.profile_image m.profile_image
  json.username m.username
  json.password m.password_digest
  json.questions m.questions
end
