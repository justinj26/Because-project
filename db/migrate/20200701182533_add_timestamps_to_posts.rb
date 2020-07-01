class AddTimestampsToPosts < ActiveRecord::Migration[6.0]
  def change
     add_column :posts, :created_at, :datetime, precision: 6, null: false
     add_column :posts, :updated_at, :datetime, precision: 6, null: false
  end
end
