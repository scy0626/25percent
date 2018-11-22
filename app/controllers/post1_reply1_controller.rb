class Post1Reply1Controller < ApplicationController
    before_action :authenticate_user!
  def create
    @reply = Post1Reply1.new
    @reply.content = params[:content]
    @reply.post1_id = params[:post_id]
    @reply.user_id = current_user.id
    @reply.save
    
    redirect_to :back
  end

  def destroy
    @reply = Post1Reply1.find(params[:id])
    
     if current_user.id == @reply.user_id
     @reply.destroy
     end
     redirect_to :back
    
  end
end
