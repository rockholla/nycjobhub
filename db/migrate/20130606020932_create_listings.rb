class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :uid
      t.string :source_name
      t.string :source_type
      t.string :source_id
      t.string :title
      t.text :description
      t.string :location
      t.datetime :listed_on
      t.text :full
      t.timestamps
    end
  end
end
