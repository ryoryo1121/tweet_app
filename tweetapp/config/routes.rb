Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 get "home/top" =>"home#top"
 get "/"        =>"home#top"
 get "about"=>"home#about"

 post"posts/:id/destroy" =>"posts#destroy"
 get "posts/:id/edit" =>"posts#edit"
 post"posts/:id/update" =>"posts#update"
 post"posts/create" =>"posts#create"
 get "posts/new" =>"posts#new"
 get "posts/index" => "posts#index"
 get "posts/:id" =>"posts#show"

 post"logout" => "user#logout"
 post"login"=>"user#login"
 get"login"=>"user#login_form"
 post"user/:id/update" => "user#update"
 get "user/:id/edit" =>"user#edit"
 post"user/create"=> "user#create"
 get"user/index"=> "user#index"
 get"user/signup"=> "user#new"
 get"user/:id"=>"user#show"
 get "user/:id/likes" => "user#likes"

 post"likes/:post_id/create" => "likes#create"
 post "likes/:post_id/destroy" => "likes#destroy"

end
