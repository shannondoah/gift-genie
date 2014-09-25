# Helper methods
# helper do

# end

#GET ACTIONS
# Homepage (Root path)
get '/' do

  erb :index

end

#Shows user profile
get '/users/:id' do 

  erb :'users/show'

end

#Shows the list of products.
get '/products' do

  erb :'products/index' 

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
get 'users/:id/edit' do 

  erb :'users/edit'

end

#POST ACTIONS
post 'users/new' do 

  erb :'users/new'

end

put 'users/:id/edit' do 

  erb :'users/edit'

end

post 'products/new' do 

 erb :'products/new'

end