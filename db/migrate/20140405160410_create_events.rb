class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :member, index: true
      t.string :title
      t.text :description
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
