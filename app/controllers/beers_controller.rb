class BeersController < ApplicationController
    get '/beers' do
        erb :'/beers/index'
    end

    get '/beers/new' do
        erb :'/beers/create_beer'
    end

    post '/beers' do
        @beer = Beer.new(params[:beer])
        @beer.save
        redirect to "/beers/#{@beer.id}"
    end


    get '/beers/:id' do
        @beer = Beer.find_by_id(params[:id])
        # binding.pry
        erb :'/beers/show'
    end




end
