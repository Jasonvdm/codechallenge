class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.timestamps
      t.string :first_name
      t.string :last_name
      t.string :school
      t.string :year_in_school
      t.string :major
    end
  end
end
