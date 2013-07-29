class Quiz < ActiveRecord::Base
  attr_accessible :title, :points_possible, :description, :category

  has_many :free_response_questions
  has_many :multiple_choice_questions

  has_many :free_response_answers
  has_many :multiple_choice_answers

  belongs_to :user


  has_and_belongs_to_many :mc_questions, class_name: 'MultipleChoiceQuestion', join_table: 'mc_questions'
  has_and_belongs_to_many :fr_questions, class_name: 'FreeResponseQuestion', join_table: 'fr_questions'
  
end
