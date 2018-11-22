class VideoPost < ApplicationRecord
    belongs_to :user
    has_many :video_reply1s
    has_many :video_hashes
end