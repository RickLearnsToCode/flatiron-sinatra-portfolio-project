class BeersController < ApplicationController
    get '/beers' do
        
        erb :'/beers/index'
    end

    get '/beers/:id' do
        @beer = Beer.find_by_id(params[:id])
        # binding.pry
        erb :'/beers/show'
    end


end
