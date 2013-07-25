class MultipleChoiceQuestion < ActiveRecord::Base
  
  attr_accessible :title, :quiz_id, :prompt, :correct_answer, :wrong_answers, :category
  belongs_to :quiz

end
