class VideoReply1 < ApplicationRecord
    belongs_to :video_post
    belongs_to :user
end