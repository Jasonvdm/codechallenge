class Quiz < ActiveRecord::Base
  attr_accessible :title, :points_possible, :description, :category

  has_many :free_response_questions
  has_many :multiple_choice_questions

  has_many :free_response_answers
  has_many :multiple_choice_answers

  belongs_to :user
end
