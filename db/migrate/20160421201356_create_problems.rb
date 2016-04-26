class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :problem_name
      t.text :description

      t.timestamps null: false
    end
  end
end
