class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.date :date
      t.integer :post_type_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
