class QnaReply < ApplicationRecord
    belongs_to :qnapost
    belongs_to :user
end
