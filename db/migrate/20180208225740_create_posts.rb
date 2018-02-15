class CreatePosts < ActiveRecord::Migration[5.1]
  def change

    create_table :posts do |t|
      t.string "title"
      t.text "content"
      t.boolean "status"

      t.timestamps
    end

    add_column :posts do |t|
      t.references :users, foreign_key: true
    end

  end
end
