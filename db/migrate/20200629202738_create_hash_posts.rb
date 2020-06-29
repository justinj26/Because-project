class CreateHashPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :hash_posts do |t|
      t.integer :post_id
      t.integer :hastag_id

      t.timestamps
    end
  end
end
