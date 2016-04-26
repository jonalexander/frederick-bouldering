class AddProblemGradeToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :problem_grade, :string
  end
end
