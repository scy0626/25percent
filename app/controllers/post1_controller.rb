class Post1Controller < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 
  
  def index
    @post = Post1.all.reverse
    @count = @post.length
   
  end
  def like
    @post = Post1.find(params[:id])
    @post.like = @post.like + 1
    @post.counter = @post.counter - 1
    @post.save
    redirect_to :back
  end
  def new
  end

  def create
    uploader = ImageUploader.new
    uploader.store!(params[:image])

    @post = Post1.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.counter = 0
    @post.like = 0
    @post.image = uploader.url
    @post.user_id = current_user.id
    @post.save
    
    redirect_to "/post1/index"
  end

  def update
    @post = Post1.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    
    @post.save
    redirect_to "/post1/show/" + params[:id]
    
  end
  
  def edit
    @post = Post1.find(params[:id])
    
  end
  
  def show
    @post = Post1.find(params[:id])
    @post.counter = @post.counter + 1
    
    @post.save
    @post_all = Post1.all
    
    # 현재 show에 나오는 글의 id
    current_index = @post_all.index { |h| h[:id] == @post.id }
  
    @max_index = @post_all.length - 1
    if current_index == 0 
      @predecessor = -1
    else
      @predecessor = current_index - 1
      @post_all.each_with_index do |p, index|
        if index == @predecessor
          @predecessor_post_id = p.id
          @predecessor_post_title = p.title
        end
      end
    end
    if @max_index == current_index
      @successor = -1
    else  
      @successor = current_index + 1
      @post_all.each_with_index do |p, index|
        if index == @successor
          @successor_post_id = p.id
          @successor_post_title = p.title
        end
      end
    end
  end


  def destroy
    @post = Post1.find(params[:id])
 
    if current_user.id == @post.user_id
      @post.destroy
      redirect_to "/post1/index"
    else
      redirect_to "/post1/index"
    end
    
  end
  
  def search
    @post = Post1.all.reverse
    @count = @post.length
    # serach_title도 배열 post_all도 배열
    search_title = params[:search_title]
    post_all = Post1.all
    @searched = Array.new
    post_all.each do |p|
      if p.title.include?(search_title)
        @searched.push(p) 
      end
    end
  end
end
