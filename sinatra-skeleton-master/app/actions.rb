require 'pry'

# Helper methods
# helper do

# end

#GET ACTIONS
# Homepage (Root path)
get '/' do
  @users = User.all
  @products = Product.all
  erb :index

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

#Shows a signup form to create a new user.
get 'users/new' do 
  
  erb :'users/new'

end

#Form to edit user profile.
get '/users/:id/edit' do 
  erb :'users/edit'
end

#POST ACTIONS
post 'users/new' do 

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