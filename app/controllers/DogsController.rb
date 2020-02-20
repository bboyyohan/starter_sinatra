class DogsController < Sinatra::Base
    
    configure do 
        set :views, 'app/views/dogs'
    end 

    get '/dogs' do 
        @dogs = Dog.all
        erb :index
    end 

    get '/dogs/new' do
        erb :new
    end 

    post '/dogs' do
        Dog.find_or_create_by(name: params[:dog_name])
        @dogs = Dog.all
        erb :index
    end 

    get '/dogs/:id' do
        @dog = Dog.find(params[:id])
        erb :show
    end 

    get '/dogs/:id/edit' do
        @dog = Dog.find(params[:id])
        erb :edit 
    end 

    patch '/dogs/:id' do 
        @dog = Dog.find(params[:id])
        @dog.update(name: params[:new_dog_name])
        redirect "/dogs/#{@dog.id}"
    end 

    delete '/dogs/:id' do
        dog = Dog.find(params[:id])
        dog.delete
        redirect "/dogs"
    end 

end 