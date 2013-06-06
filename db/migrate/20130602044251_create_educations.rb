class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :resume_id
      t.date :start_date
      t.date :end_date
      t.string :school_name
      t.string :city
      t.string :state
      t.string :major
      t.string :minor
      t.string :degree
      t.string :gpa
      t.string :honor_1
      t.string :honor_2

      t.timestamps
    end
  end
end
