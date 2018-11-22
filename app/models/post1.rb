class Post1 < ApplicationRecord
   belongs_to :user
   has_many :post1_reply1s
end
