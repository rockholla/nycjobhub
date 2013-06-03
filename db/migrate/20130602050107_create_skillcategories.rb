class CreateSkillcategories < ActiveRecord::Migration
  def change
    create_table :skillcategories do |t|
      t.string :resume_id
      t.string :description

      t.timestamps
    end
  end
end
