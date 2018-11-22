class CreatePicturePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :picture_posts do |t|
      t.string :title
      t.string :content
      t.string :image, :default =>"" 
      t.integer :counter
      t.integer :like
      t.timestamps
    end
  end
end
