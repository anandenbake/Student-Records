class AddResumeAttributesToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :objective, :text
    add_column :students, :Education, :string
    add_column :students, :percentage, :string
    add_column :students, :passout_year, :string
    add_column :students, :Technical_skills, :text
    add_column :students, :Project_description, :text
    add_column :students, :Tranning_undergone, :text
    add_column :students, :Hobbies, :text
  end
end
