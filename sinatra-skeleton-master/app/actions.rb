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

  @categories_all = Category.all
  @categories1 = []
  @categories2 = []
  @categories3 = []
  @categories4 = []
  @categories5 = []
  @categories6 = []

# ===== Populate Category arrays =====
  for i in 1..6 do 
    @categories1 << @categories_all[i]
  end
  for i in 7..12 do 
    @categories2 << @categories_all[i]
  end
  for i in 13..18 do 
    @categories3 << @categories_all[i]
  end
  for i in 19..24 do 
    @categories4 << @categories_all[i]
  end
  for i in 25..30 do 
    @categories5 << @categories_all[i]
  end
  for i in 31..36 do 
    @categories6 << @categories_all[i]
  end

  # display_page = 1 + rand(5)
  # # => randomly picks a category array upon page load

  # case display_page
  # when 1
  #   @categories = @categories1
  # when 2
  #   @categories = @categories2
  # when 3
  #   @categories = @categories3
  # when 4
  #   @categories = @categories4
  # when 5
  #   @categories = @categories5
  # when 6
  #   @categories = @categories6
  # end

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

    case (1 + rand(5))
    when 1
      @user.cover_photo = '/user_img/cover_img/be_yourself.jpg'
    when 2
      @user.cover_photo = '/user_img/cover_img/car-smoke.jpg'
    when 3
      @user.cover_photo = '/user_img/cover_img/plant-in-desert-cover.jpg'
    when 4
      @user.cover_photo = '/user_img/cover_img/scuseme.jpg'
    when 5
      @user.cover_photo = '/user_img/cover_img/tetris-cover.jpg'
    end

    if @user.avatar == nil
      @user.avatar = '/user_img/blank.png'
    end
    @user.save

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
    @products = Product.where("name LIKE ? OR description LIKE ?", "%#{@search_params}%".downcase, "%#{@search_params}%".downcase)
    
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
  login_check
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

post '/products/results' do

  # @categories = []
  # params.values.each do |id|
  #   @categories << Category.find(id)
  # end
  # @categories = Category.where(id: params.values)
  #@products = Product.where(category_id: params.values)
 

  # @products = []
  # Product.all.each do |product|
  #   product.categories.each do |cat|
  #     if @categories.include?(cat)
  #       @products << product
  #     end
  #   end
  # end

  @products = Product.joins(:categories)
    .select("products.*, COUNT(categories.id) AS count")
    .where(categories: { id: params.values })
    .group(:product_id)
    .order('count DESC')
  login_check
  erb :'products/index'
end


