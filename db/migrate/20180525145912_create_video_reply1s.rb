class CreateVideoReply1s < ActiveRecord::Migration[5.0]
  def change
    create_table :video_reply1s do |t|
      t.string :content
      t.integer :video_post_id
      t.integer :user_id
      t.timestamps
    end
  end
end
