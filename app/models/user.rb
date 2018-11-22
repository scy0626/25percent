class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :post1s
  has_many :post1_reply1s
  has_many :video_posts
  has_many :video_reply1s
  has_many :qnaposts
  has_many :qna_replies
end
