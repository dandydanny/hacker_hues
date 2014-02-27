get '/posts/' do
  @user = User.find(session[:user_id])
  @posts = Post.all
  erb :all_posts
end

get '/post/:id' do
  @user = User.find(session[:user_id])
  @post = Post.find(params[:id])
  erb :single_post
end

post '/new_post' do
  @user = User.find(session[:user_id])
  @user.posts << Post.create(params)
  redirect('/posts/')
end
