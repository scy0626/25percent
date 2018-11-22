class CreatePost1s < ActiveRecord::Migration[5.0]
  def change
    create_table :post1s do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.string :image, :default =>"" 
      t.integer :counter
      t.integer :like
      t.timestamps
    end
  end
end
