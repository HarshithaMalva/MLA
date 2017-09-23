class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.boolean :is_published
      t.date :published_date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
