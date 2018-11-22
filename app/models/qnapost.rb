class Qnapost < ApplicationRecord
    belongs_to :user
    has_many :qna_replies
end
