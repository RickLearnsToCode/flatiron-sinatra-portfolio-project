class StylesController < ApplicationController
    
    get '/styles' do
        erb :'/styles/index'
    end

    get '/styles/new' do
        erb :'/styles/create_style'
    end

    post '/styles' do
        @style = Style.new(params[:style])
        @style.save
        redirect to "/styles/#{@style.id}"
    end


    get '/styles/:id/edit' do
        @style = Style.find_by_id(params[:id])
        erb :'/styles/edit'
    end


    get '/styles/:id' do
        @style = Style.find_by_id(params[:id])
        erb :'/styles/show'
    end




end
