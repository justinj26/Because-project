class CreateEmoticons < ActiveRecord::Migration[6.0]
  def change
    create_table :emoticons do |t|
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end
