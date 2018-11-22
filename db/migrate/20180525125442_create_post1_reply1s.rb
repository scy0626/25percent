class CreatePost1Reply1s < ActiveRecord::Migration[5.0]
  def change
    create_table :post1_reply1s do |t|
      t.string :content
      t.integer :post1_id
      t.integer :user_id
     
      t.timestamps
    end
  end
end
