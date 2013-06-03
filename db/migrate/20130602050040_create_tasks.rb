class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :experience_id
      t.string :description

      t.timestamps
    end
  end
end
