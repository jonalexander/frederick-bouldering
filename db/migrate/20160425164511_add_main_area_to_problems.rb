class AddMainAreaToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :main_area, :string
  end
end
