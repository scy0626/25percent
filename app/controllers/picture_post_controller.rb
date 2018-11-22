class PicturePostController < ApplicationController
 def index
    @post = PicturePost.all
 
  end
  
  def like
    @post = PicturePost.find(params[:id])
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

    @post = PicturePost.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.counter = 0
    @post.like = 0
    @post.image = uploader.url
    @post.save
    
    redirect_to "/picture/index"
  end

  def update
    @post = PicturePost.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    
    redirect_to "/picture/show/" + params[:id]
  end
  
  def edit
    @post = PicturePost.find(params[:id])
  end
  
  def show
    @post =  PicturePost.find(params[:id])
    @post.counter = @post.counter + 1
    @post.save
  end


  def destroy
    @post = PicturePost.find(params[:id])
    @post.destroy
    redirect_to "/picture/index"
  end
end
