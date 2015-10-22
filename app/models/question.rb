class Question < ActiveRecord::Base
  belongs_to :member
  has_many :answers
  
end
