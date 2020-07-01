class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :emoticon_id
      t.integer :user_id
      t.string :image
    end
  end
end
