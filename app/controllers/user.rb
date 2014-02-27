post '/login' do
  @user = User.find_by_email(params[:email])
  if @user.password == params[:password]
    session[:user_id] = @user.id
    redirect("/user/#{@user.id}")
  else
    redirect('/')
  end
end

post '/signup' do
  @user = User.new(name: params[:name], email: params[:email])
  @user.password = params[:password]
  @user.save!
  session[:user_id] = @user.id
  redirect("/user/#{@user.id}")
end

get '/logout' do
  session.clear
  redirect('/')
end

get '/user/:user_id' do
  @user = User.find(params[:user_id])
  erb :user_profile
end
