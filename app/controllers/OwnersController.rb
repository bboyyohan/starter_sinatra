class OwnersController < Sinatra::Base

    configure do 
        set :views, 'app/views/owners'
    end 

    get '/owners' do 
        @owners = Owner.all 
        erb :index
    end 

    get '/owners/new' do 
        erb :new
    end 

    post '/owners' do 
        Owner.find_or_create_by(name: params[:owner_name])
        @owners = Owner.all 
        erb :index 
    end 

    get '/owners/:id' do 
        @owner = Owner.find(params[:id])
        erb :show
    end 

    get '/owners/:id/edit' do 
        @owner = Owner.find(params[:id])
        erb :edit 
    end 

    patch '/owners/:id' do 
        @owner = Owner.find(params[:id])
        @owner.update(name: params[:new_owner_name])
        redirect "/owners/#{@owner.id}"
    end 

    delete '/owners/:id' do
        owner = Owner.find(params[:id])
        owner.delete
        redirect "/owners"
    end 


end
