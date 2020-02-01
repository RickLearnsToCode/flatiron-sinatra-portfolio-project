class BeersController < ApplicationController
    get '/beers' do
        
        erb :'/beers/index'
    end


end
