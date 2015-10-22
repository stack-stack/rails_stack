class Answer < ActiveRecord::Base
  belongs_to :member
  belongs_to :question
  
end
