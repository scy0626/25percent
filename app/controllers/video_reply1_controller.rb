class VideoReply1Controller < ApplicationController
    def create
    @reply = VideoReply1.new
    @reply.content = params[:content]
    # 해당 글의 id값을 post_id의 변수로 넣어준다.
    @reply.user_id = current_user.id
    @reply.video_post_id = params[:post_id]
    @reply.save
    
    # :back은 이전 화면으로 돌아가는 것
    redirect_to :back
  end

  def destroy
    @reply = VideoReply1.find(params[:id])
    
    
    if current_user.id == @reply.user_id
      @reply.destroy
    end
    redirect_to :back
  end
end
