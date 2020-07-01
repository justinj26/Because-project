class ChangeColumnHashPosts< ActiveRecord::Migration[6.0]
  def change
    rename_column :hash_posts, :hastag_id, :hashtag_id
  end
end
