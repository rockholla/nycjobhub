class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :skillcategory_id
      t.string :description

      t.timestamps
    end
  end
end
