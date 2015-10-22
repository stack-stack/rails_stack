# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
member1 = Member.create!(username: "member1", password: "password")
member2 = Member.create!(username: "member2", password: "password")
member3 = Member.create!(username: "member3", password: "password")

question1 = Question.create!(member_id: 1, title: "Question 1", question_body: "This is a question?", question_votes: 3)
question2 = Question.create!(member_id: 1, title: "Question 2", question_body: "This is another question?", question_votes: 2)
question3 = Question.create!(member_id: 2, title: "Question 3", question_body: "This is the third question?", question_votes: 1)

answer1 = Answer.create!(member_id: 2, question_id: 1, answer_body: "Answer goes here.", answer_votes: 15, accepted: true)
answer2 = Answer.create!(member_id: 3, question_id: 1, answer_body: "Answer goes here.", answer_votes: 4, accepted: false)
