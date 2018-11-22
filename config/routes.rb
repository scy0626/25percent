Rails.application.routes.draw do
 
  get 'video_board1_reply1/create'

  get 'video_board1_reply1/destroy'

  devise_for :users
  root 'percent#index'
 #25% 이야기
  get 'percent/story'
 #동영상 게시판1
  get 'video_board1/index'

  get 'video_board1/new'

  get 'video_board1/create'
  post 'video_board1/create'

  get 'video_board1/update'
  post 'video_board1/update/:id' => 'video_board1#update'

  get 'video_board1/edit'
  get 'video_board1/edit/:id' => 'video_board1#edit'

  get 'video_board1/destroy'
  get 'video_board1/destroy/:id' => 'video_board1#destroy'

  get 'video_board1/show'
  get 'video_board1/show/:id' => 'video_board1#show'
  
  post 'video_board1/search'
  
  get 'video_reply1/create'
  post 'video_reply1/create'
  
  get 'video_reply1/destroy'
  get 'video_reply1/destroy/:id' => 'video_reply1#destroy'
  
 #게시물 1
  get 'post1_reply1/create'
  post 'post1_reply1/create'
  
  get 'post1_reply1/destroy'
  get 'post1_reply1/destroy/:id' => 'post1_reply1#destroy'
  
  get 'post1/like/:id' =>'post1#like'
  
  get 'post1/new'

  get 'post1/create'
  post 'post1/create'

  get 'post1/index'

  get 'post1/update'
  post 'post1/update/:id' =>'post1#update'

  get 'post1/show'
  get 'post1/show/:id' => 'post1#show'

  get 'post1/edit'
  get 'post1/edit/:id' => 'post1#edit'
  
  get 'post1/destroy'
  get 'post1/destroy/:id' => 'post1#destroy'
  
  post 'post1/search'


#도안게시판

  get 'picture/like/:id' =>'picture_post#like'
  
  get 'picture/new'    => 'picture_post#new'

  get 'picture/create'  => 'picture_post#create'
  post 'picture/create' => 'picture_post#create'

  get 'picture/index' => 'picture_post#index'

  get 'picture/update' => 'picture_post#update'
  post 'picture/update/:id' =>'picture_post#update'

  get 'picture/show'  => 'picture_post#show'
  get 'picture/show/:id' => 'picture_post#show'

  get 'picture/edit'    => 'picture_post#edit'
  get 'picture/edit/:id' => 'picture_post#edit'
  
  get 'picture/destroy'  => 'picture_post#destroy'
  get 'picture/destroy/:id' => 'picture_post#destroy'
  
#qna게시판
  get 'qna_reply/create'
  post 'qna_reply/create'
  
  get 'qna_reply/destroy'
  get 'qna_reply/destroy/:id' => 'qna_reply#destroy'

  get 'qnapost/new'   

  get 'qnapost/create' 
  post 'qnapost/create'

  get 'qnapost/index' 

  get 'qnapost/update' 
  post 'qnapost/update/:id' =>'qnapost#update'

  get 'qnapost/show'  
  get 'qnapost/show/:id' => 'qnapost#show'

  get 'qnapost/edit'   
  get 'qnapost/edit/:id' => 'qnapost#edit'
  
  get 'qnapost/destroy' 
  get 'qnapost/destroy/:id' => 'qnapost#destroy'

  post 'qnapost/search'

  

 #main 화면
  get 'percent/index'

  get 'percent/video_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
