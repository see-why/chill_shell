class AddEmployeeIdToEmployee < ActiveRecord::Migration[8.0]
  def change
    add_column :employees, :employee_id, :string
  end
end
