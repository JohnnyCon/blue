class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.references :company, index: true
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
