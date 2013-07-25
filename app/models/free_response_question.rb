class FreeResponseQuestion < ActiveRecord::Base
  
  attr_accessible :title, :quiz_id, :prompt, :instructions, :correct_answer, :category

  belongs_to :quiz
end
