class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :member_id
      t.string :title
      t.text :question_body
      t.integer :question_votes

      t.timestamps null: false
    end
  end
end
