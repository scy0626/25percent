class CreateVideoPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :video_posts do |t|
      t.string :title
      t.string :video
      t.integer :user_id
      t.integer :counter
      t.integer :like
      t.timestamps
    end
  end
end
