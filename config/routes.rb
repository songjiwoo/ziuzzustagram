Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/delete'

  root 'template#index'
  
  get 'template/index'    # 게시물 조회
  
  get 'template/create'   # 글을 작성할 화면을 가져온다.
  
  post 'template/new'     # 게시글 저장!
  
  get 'template/edit/:post_id' => 'template#edit'         # 수정하는 화면을 가져오자.
  
  post 'template/update/:post_id' => 'template#update'    # 수정한거 저장

  get 'template/destroy/:post_id' => 'template#destroy'


  get 'template/about'

  get 'template/store'

  get 'template/products'
  
  get 'comments/create/:post_id'=>'comments#create'
  
  get 'comments/delete/:comment_id'=>'comments#delete'
  
 
end
