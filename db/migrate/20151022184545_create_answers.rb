class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :member_id
      t.integer :question_id
      t.text :answer_body
      t.integer :answer_votes
      t.boolean :accepted

      t.timestamps null: false
    end
  end
end
