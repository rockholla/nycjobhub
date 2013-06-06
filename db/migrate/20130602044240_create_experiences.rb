class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :resume_id
      t.date :start_date
      t.date :end_date
      t.string :employer
      t.string :city
      t.string :state
      t.string :position

      t.timestamps
    end
  end
end
