class CreateQnaReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :qna_replies do |t|
      t.string :content
      t.integer :qnapost_id
      t.integer :user_id

      t.timestamps
    end
  end
end
