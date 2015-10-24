# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do |x|
  Member.create!(username: ("member" + "#{x+1}"), password: "password", profile_image: Faker::Avatar.image)
end

100.times do |x|
  Question.create!(member_id: rand(1..50), title: Faker::Lorem.sentence(rand(2..10)).chomp('.') + "?", question_body: Faker::Lorem.paragraph(4), question_votes: rand(1..100))
end

100.times do |x|
  Answer.create!(member_id: rand(1..50), question_id: rand(1..50), answer_body: Faker::Lorem.paragraph(3), answer_votes: rand(1..100), accepted: false)
end
