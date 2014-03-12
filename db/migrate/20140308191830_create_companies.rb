class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.integer :employee_count
      t.date :join_date

      t.timestamps
    end
  end
end
