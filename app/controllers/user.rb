post '/login' do
  @user = User.find_by_email(params[:email])
  if @user.password == params[:password]
    session[:user_id] = @user.id
    redirect("/user/#{@user.id}")
  else
    redirect("/")
  end
end

post '/signup' do
  @user = User.new(params[:user])
  @user.password = params[:password]
  @user.save!
  session[:user_id] = @user.id
  redirect("/user/#{@user.id}")
end
