require 'pry'

# Helper methods
# helper do

# end
enable :sessions

#GET ACTIONS
# Homepage (Root path)
get '/' do
  @logged_in = session[:user_id] ? true : false
  if(@logged_in)
    @user = User.find_by_id(session[:user_id])
  else
    @user = User.new
  end
  @categories = Category.all
  @products = Product.all
  erb :index

end
#Shows a signup form to create a new user.
get '/users/new' do 
  @user = User.new
  erb :'users/new'

end

#Shows user profile
get '/users/:id' do 

  erb :'users/show'

end

#Shows the list of products.
# get '/products' do
#   @products = Product.all
#   erb :'products/index' 
# end

# post '/products' do
#   @product = params[:category]
#   @products = Category.find_by("name = ?", @product).products
#   erb :'products/index' 
# end

#Shows the list of products
get '/products' do
  if params[:category]
    @product = params[:category]
    @products = Category.find_by("name = ?", @product).products
    erb :'products/index' 
  else
    @products = Product.all
    erb :'products/index' 
  end
end


#Shows a form to create a new product.
get '/products/new' do 

  erb :'products/new'

end

#Form to edit user profile.
get '/users/:id/edit' do 
  erb :'users/edit'
end

get '/logout' do 
  session[:user_id] = nil
  redirect '/'
end

#POST ACTIONS
post '/login' do 
  @user = User.where(
    email:   params[:email],
    password: params[:password]
    ).first
  if @user 
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    redirect '/'
  end
end

post '/users/new' do 
  @user = User.new(
    email: params[:email],
    password: params[:password],
    name: params[:name],
    avatar: params[:avatar],
    cover_photo: params[:cover_photo],
    male: params[:male],
    female: params[:female],
    birthdate: params[:birthdate],
    shipping_address: params[:shipping_address],
    phone: params[:phone]
    )
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    redirect '/users/new'
    
  end
  erb :'users/new'

end

put 'users/:id/edit' do 
  @user = User.find(3)
  @user.update(
    name: params[:name],
    email: params[:email],
    birthdate: params[:birthdate]
    )
  erb :'users/:id/edit'

end

post 'products/new' do
  @product = Product.new(
    name: params[:name],
    price: params[:price],
    description: params[:description],
    url: params[:url]
    ) 
  @product.save
  erb :'products/new'

end