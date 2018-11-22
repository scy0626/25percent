class QnapostController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 
  
  def index
    @post = Qnapost.all.reverse
    
    @count = @post.length
  end
  
  def new
  end

  def create
    @post = Qnapost.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.user_id = current_user.id
    @post.save
    
    redirect_to "/qnapost/index"
  end

  def update
    @post = Qnapost.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    
    redirect_to "/qnapost/show/" + params[:id]
  end
  
  def edit
    @post = Qnapost.find(params[:id])
  end
  
  def show
    @post =  Qnapost.find(params[:id])
   
  end


  def destroy
    @post = Qnapost.find(params[:id])
    if current_user.id == @post.user_id
      @post.destroy
      redirect_to "/qnapost/index"
    else
     redirect_to "/qnapost/index"
    end
  end
  
  def search
    @post = Qnapost.all.reverse
    @count = @post.length
    # serach_title도 배열 post_all도 배열
    search_title = params[:search_title]
    post_all = Qnapost.all
    @searched = Array.new
    post_all.each do |p|
      if p.title.include?(search_title)
        @searched.push(p) 
      end
    end
  end
  
end
