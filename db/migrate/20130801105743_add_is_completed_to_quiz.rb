class AddIsCompletedToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :is_completed, :boolean, :default => false
    add_column :quizzes, :in_progress, :boolean, :default => false
  end
end
