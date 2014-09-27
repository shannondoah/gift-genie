require 'pry'

# Helper methods
helpers do
  def login_check
    @logged_in = session[:user_id] ? true : false
    if(@logged_in)
      @user = User.find_by_id(session[:user_id])
    else
     @user = User.new
    end  
  end

  def filter_favourites
    if params[:orderby] == 'price'
      @favourites = Favourite.joins(:product).order('CAST(products.price as decimal)').where(user_id: @user.id)
    elsif params[:orderby] == 'newest'
      @favourites = Favourite.order('created_at').where(user_id: @user.id)
    elsif params[:orderby] == 'oldest'
      @favourites = Favourite.order('created_at DESC').where(user_id: @user.id)
      # favourites = Favourite.order('created_at').find_by(user_id: @user.id)
      # favourites = Favourite.joins(:product).order('created_at').find_by(user_id: @user.id)
      # favourites = Favourite.joins(:product).order('CAST(products.price as decimal)').find_by(user_id: @user.id)
    else
      @favourites = Favourite.where(user_id: @user.id)
    end
  end

  def random_gift_generator
    @random_gift_id = rand(Product.first.id..Product.last.id)
    @product = Product.find_by("id = ?", @random_gift_id)
    
  end

end
enable :sessions

#GET ACTIONS
# Homepage (Root path)
get '/' do
  login_check
  @categories = Category.all
  @category_page_count = (@categories.count/6).ceil
  # => the number of categories we want per page is 6




  @products = Product.all
  erb :index

end
#Shows a signup form to create a new user.
get '/users/new' do
  login_check 
  @user = User.new
  erb :'users/new'

end

#Shows user profile
get '/users/:id' do
 login_check
  if params[:id] == session[:user_id].to_s
    @user = User.find(session[:user_id])
    filter_favourites
    erb :'users/show'
  else
    @user = User.find(params[:id])
    filter_favourites
    erb :'users/show_public'
  end
end

#Shows the list of products
get '/products' do

  login_check
  if params[:search]
    @search_params = params[:search]
    @products = Category.find_by("name = ?", @search_params).products
    
    erb :'products/index' 
  elsif params[:random]
    random_gift_generator
    erb :'products/random'
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
  @user = User.find(params[:id])
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


post '/users/:id/changepassword' do
  @user = User.where(
    id: params[:id],
    password: params[:old_password]
    ).first
  if @user
    @user.password = params[:new_password]
    redirect to("/users/#{params[:id]}/edit")
  end
end


post '/users/:id/edit' do 
  @user = User.find(params[:id])
  @user.name = params[:name]
  @user.email = params[:email]
  @user.birthdate = params[:birthdate]
  @user.save
  redirect to("/users/#{params[:id]}/edit")
end

post 'products/new' do
  @product = Product.new(
    name: params[:name],
    price: params[:price],
    description: params[:description],
    url: params[:url]
    ) 
  @product.save
  @user = User.where(id: session[:user_id])
  @user.favourites.create(product_id: @product.id, user_id: @user.id)
  redirect to("/users/#{@user.id}")
end

post '/favourites/:id/remove' do
  @favourite = Favourite.where("user_id = ? AND product_id = ?", [session[:user_id]],[params[:id]]).first
  Favourite.destroy(@favourite.id)
  redirect to("/users/#{session[:user_id]}")
end

get '/favourites/:id/add' do
  login_check
  @user.favourites.create(product_id: params[:id], user_id: @user.id)
  redirect to("/users/#{session[:user_id]}")
end