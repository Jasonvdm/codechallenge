class AddWrongAnswersToMultipleChoice < ActiveRecord::Migration
  def change
    add_column :multiple_choices, :wrong_answers, :string
  end
end
