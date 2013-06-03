class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :last_name
      t.string :first_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone
      t.string :alt_1
      t.string :alt_tag_1
      t.string :alt_2
      t.string :alt_tag_2

      t.timestamps
    end
  end
end
