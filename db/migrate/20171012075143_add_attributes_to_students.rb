class AddAttributesToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    add_column :students, :phonenum, :string
    add_column :students, :college_name, :string
    add_column :students, :address, :text
  end
end
