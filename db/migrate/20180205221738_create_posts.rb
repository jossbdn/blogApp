class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug
      t.text :content
      t.boolean :status
      t.integer :user_id
      t.integer :category_id
      t.timestamps
    end
  end
end
