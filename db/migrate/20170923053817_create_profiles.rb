class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :dob
      t.text :education
      t.boolean :gender
      t.integer :phone
      t.text :proffession
      t.text :political_career
      t.text :other_activity
      t.text :address
      t.integer :user_id
      t.integer :position_id

      t.timestamps null: false
    end
  end
end
